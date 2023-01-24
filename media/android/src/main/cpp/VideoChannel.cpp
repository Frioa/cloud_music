//
// Created by YueQi on 2021/12/11.
//

#include "VideoChannel.h"

extern "C" {
#include <libavutil/imgutils.h>
#include <libavutil/time.h>
#include <libswscale/swscale.h>
}

/* no AV sync correction is done if below the minimum AV sync threshold */
// 最低同步阈值，如果低于该值，则不需要同步校正
#define AV_SYNC_THRESHOLD_MIN 0.04
/* AV sync correction is done if above the maximum AV sync threshold */
// 最大同步阈值，如果大于该值，则需要同步校正
#define AV_SYNC_THRESHOLD_MAX 0.1

VideoChannel::VideoChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext,
                           AVRational &base, int fps) : BaseChannel(channelId, callback,
                                                                    avCodecContext, base),
                                                        fps(fps) {
    pthread_mutex_init(&surfaceMutex, nullptr);
}


VideoChannel::~VideoChannel() {
    pthread_mutex_destroy(&surfaceMutex);
    callback = nullptr;
}


void *videoDecode_t(void *arg) {
    auto *videoChannel = static_cast<VideoChannel *>(arg);
    videoChannel->decode();
    return nullptr;
}

void *videoPlay_t(void *arg) {
    auto *videoChannel = static_cast<VideoChannel *>(arg);
    videoChannel->_play();
    return nullptr;
}

void VideoChannel::play() {
    isPlaying = true;
    // 开启队列的工作
    setEnable(true);
    // 解码
    pthread_create(&videoDecodeTask, nullptr, videoDecode_t, this);
    // 播放
    pthread_create(&videoPlayTask, nullptr, videoPlay_t, this);
}


void VideoChannel::_play() {
    // 缩放，与格式转换
    SwsContext *swsContext = sws_getContext(avCodecContext->width,
                                            avCodecContext->height,
                                            avCodecContext->pix_fmt,
                                            avCodecContext->width,
                                            avCodecContext->height,
                                            AV_PIX_FMT_RGBA, SWS_FAST_BILINEAR,
                                            nullptr, nullptr, nullptr);
    uint8_t *data[4];
    int linesize[4];
    av_image_alloc(data, linesize, avCodecContext->width, avCodecContext->height, AV_PIX_FMT_ARGB,
                   1);
    AVFrame *frame = nullptr;

    int ret;
    double frame_delay = 1.0 / fps;
    while (isPlaying) {
        // 阻塞方法
        ret = frame_queue.deQueue(frame);
        // 可能用户停止播放
        if (!isPlaying) break;
        if (!ret) continue;

        // 按照 fps 进行休眠, 让视频流畅播放
        double extra_delay = frame->repeat_pict / (2.0 * fps);
        double delay = extra_delay + frame_delay;

        if (audioChannel) {
            // best_effort_timestamp: 值 pts
            clock = frame->best_effort_timestamp * av_q2d(time_base);
            double diff = clock - audioChannel->clock;

            // 给到一个时间范围内误差, 允许的误差范围
            /**
             * 1. delay < 0.04 就是 0.04
             * 2. delay > 0.1 就是 0.1
             * 3. 0.04 < delay < 0.1
             */
            double sync = FFMAX(AV_SYNC_THRESHOLD_MIN, FFMIN(AV_SYNC_THRESHOLD_MAX, delay));
            //
            if (diff <= -sync) {
                LOGE("音频快了，等视频速度上来 delay=%lf diff=%lf sum=%lf", delay, diff, delay + diff);
                delay = FFMAX(0.0, delay + diff);
            } else if (diff > sync) {
                // 视频快了，等音频速度上来
                delay = delay + diff;
                LOGE("视频快了，等音频速度上来 %lf", delay);
            }

            LOGE("Video: %f Audio: %f delay: %lf A-V=%lf ", clock, audioChannel->clock, delay,
                 -diff);
        }

        av_usleep((int) (delay * 1000000));
        // 2. 指针数据 RGBA
        // 3. 每一行数据个数
        // 4. offset
        // 5. 要转换的高
        sws_scale(swsContext, frame->data, frame->linesize, 0, frame->height,
                  data, linesize);

        onDraw(data, linesize, avCodecContext->width, avCodecContext->height);
        releaseAvFrame(frame);
    }

    av_freep(&data[0]);
    isPlaying = false;
    releaseAvFrame(frame);
    sws_freeContext(swsContext);

    LOGE("VideoChannel _play 结束");
}


void VideoChannel::decode() {
    AVPacket *packet = nullptr;
    while (isPlaying) {
        // 阻塞
        // 1. 能够取到数据
        // 2. 停止播放: 退出循环
        int ret = pkt_queue.deQueue(packet);

        if (!isPlaying) {
            LOGI("停止播放退出");
            break;
        }
        if (!ret) continue;

        // 向解码器发送解码数据
        ret = avcodec_send_packet(avCodecContext, packet);
        releaseAvPacket(packet);

        if (ret < 0) {
            LOGE("向解码器发送解码数据发生错误 %d.", ret);
            break;
        }

        AVFrame *frame = av_frame_alloc();
        ret = avcodec_receive_frame(avCodecContext, frame);
        if (ret == AVERROR(EAGAIN)) {
            LOGI("此数据包的数据已经读取完, 取到的可能是 B 帧需要其他帧做参考");
            continue;
        } else if (ret < 0) {
            LOGI("发生错误");
            break;
        }

        /// TODO: 这里还有音频，更好的实现是需要时在解码，只需要一个线程与一个待解码队列。
        while (frame_queue.size() > fps * 10 && isPlaying) {
            av_usleep(1000 * 10);
        }

        frame_queue.enQueue(frame);
    }
    releaseAvPacket(packet);
}

void VideoChannel::setWindow(ANativeWindow *window) {
    LOGI("VideoChannel::setWindow window: %p", window);

    pthread_mutex_lock(&surfaceMutex);
    if (this->window) {
        ANativeWindow_release(this->window);
    }
    this->window = window;
    pthread_mutex_unlock(&surfaceMutex);
}


//void VideoChannel::setSurfaceTexture(ASurfaceTexture *texture) {
//    pthread_mutex_lock(&surfaceMutex);
//    if (pTexture) {
//        ASurfaceTexture_release(pTexture);
//    }
//    pTexture = texture;
//    pthread_mutex_unlock(&surfaceMutex);
//}

void VideoChannel::onDraw(uint8_t **data, int *linesize, int width, int height) {
    pthread_mutex_lock(&surfaceMutex);
    if (!window) {
        LOGI("onDraw：window是空");
        pthread_mutex_unlock(&surfaceMutex);
        return;
    }

    ANativeWindow_setBuffersGeometry(window, width, height, WINDOW_FORMAT_RGBA_8888);

    ANativeWindow_Buffer buffer;
    if (ANativeWindow_lock(window, &buffer, nullptr) != 0) {
        LOGI("锁定 window 失败：");
        ANativeWindow_release(window);
        window = nullptr;
        pthread_mutex_unlock(&surfaceMutex);
        return;
    }

    uint8_t *dstData = static_cast<uint8_t *>(buffer.bits);
    int dstSize = buffer.stride * 4;

    // 视频图像的 RGB 数据
    uint8_t *srcData = data[0];
    int srcSize = linesize[0];

    for (int i = 0; i < buffer.height; i++) {
        memcpy(dstData + i * dstSize, srcData + i * srcSize, srcSize);
    }

    ANativeWindow_unlockAndPost(window);
    pthread_mutex_unlock(&surfaceMutex);
}

void VideoChannel::stop() {
    LOGE("VideoChannel::stop ");
    isPlaying = false;
    setEnable(false);

    pthread_join(videoDecodeTask, nullptr);
    pthread_join(videoPlayTask, nullptr);
    if (window) {
        ANativeWindow_release(window);
        window = nullptr;
    }
    LOGE("VideoChannel::stop end.");
}

void VideoChannel::stopWork() {
    LOGE("VideoChannel::stopWork ");
    isPlaying = false;
    setEnable(false);

    pthread_join(videoDecodeTask, nullptr);
    pthread_join(videoPlayTask, nullptr);

    LOGE("VideoChannel::stopWork end.");
}
