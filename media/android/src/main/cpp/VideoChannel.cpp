//
// Created by YueQi on 2021/12/11.
//

#include "VideoChannel.h"

extern "C" {
#include <libavutil/rational.h>
#include <libavutil/imgutils.h>
#include <libswscale/swscale.h>
}

VideoChannel::VideoChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext,
                           AVRational &base, int fps) : BaseChannel(channelId, callback,
                                                                    avCodecContext, base),
                                                        fps(fps) {
    pthread_mutex_init(&surfaceMutex, nullptr);
}


VideoChannel::~VideoChannel() {
    pthread_mutex_destroy(&surfaceMutex);
}


void *videoDecode_t(void *arg) {
    VideoChannel *videoChannel = static_cast<VideoChannel *>(arg);
    videoChannel->decode();
    return nullptr;
}

void *videoPlay_t(void *arg) {
    VideoChannel *videoChannel = static_cast<VideoChannel *>(arg);
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
                                            0, 0, 0);
    uint8_t *data[4];
    int linesize[4];
    av_image_alloc(data, linesize, avCodecContext->width, avCodecContext->height, AV_PIX_FMT_ARGB,
                   1);
    AVFrame *frame = nullptr;

    int ret;
    while (isPlaying) {
        // 阻塞方法
        ret = frame_queue.deQueue(frame);
        // 可能用户停止播放
        if (!isPlaying) break;
        if (!ret) continue;

        // 2. 指针数据 RGBA
        // 3. 每一行数据个数
        // 4. offset
        // 5. 要转换的高
        sws_scale(swsContext, frame->data, frame->linesize, 0, frame->height,
                  data, linesize);

        onDraw(data, linesize, avCodecContext->width, avCodecContext->height);
    }

    av_free(&data[0]);
    isPlaying = false;
    releaseAvFrame(frame);
    sws_freeContext(swsContext);
}


void VideoChannel::decode() {
    LOGI("开始解码: window:%p", window);

    AVPacket *packet;
    while (isPlaying) {
        // 阻塞
        // 1. 能够取到数据
        // 2. 停止播放: 退出循环
        int ret = pkt_queue.deQueue(packet);
        LOGI("从 pkt_queue 取出 AVPacket");

        if (!isPlaying) {
            LOGI("停止播放退出");
            break;
        }
        if (!ret) continue;

        LOGI("向解码器发送解码数据");
        // 向解码器发送解码数据
        ret = avcodec_send_packet(avCodecContext, packet);
        releaseAvPacket(packet);

        if (ret < 0) {
            LOGI("发生错误 decode（）1");
            break;
        }

        LOGI("从解码器中取出解码好的数据");
        AVFrame *frame = av_frame_alloc();
        ret = avcodec_receive_frame(avCodecContext, frame);
        if (ret == AVERROR(EAGAIN)) {
            LOGI("此数据包的数据已经读取完, 取到的可能是 B 帧需要其他帧做参考");
            continue;
        } else if (ret < 0) {
            LOGI("发生错误 decode（）2");
            break;
        }
        LOGI("放入 frame_queue 播放队列");
        frame_queue.enQueue(frame);
    }
    releaseAvPacket(packet);
}

void VideoChannel::setWindow(ANativeWindow *window_) {
    LOGI("VideoChannel::setWindow window: %p", window_);

    pthread_mutex_lock(&surfaceMutex);
    if (window) {
        ANativeWindow_release(window);
    }
    window = window_;
    pthread_mutex_unlock(&surfaceMutex);
}


void VideoChannel::setSurfaceTexture(ASurfaceTexture *texture) {
    pthread_mutex_lock(&surfaceMutex);
    if (pTexture) {
        ASurfaceTexture_release(pTexture);
    }
    pTexture = texture;
    pthread_mutex_unlock(&surfaceMutex);
}

void VideoChannel::onDraw(uint8_t **data, int *linesize, int width, int height) {
    LOGI("开始画画：window %p", window);

    pthread_mutex_lock(&surfaceMutex);
    if (!window) {
        LOGI("onDraw：window是空");
        pthread_mutex_unlock(&surfaceMutex);
        return;
    }

    ANativeWindow_setBuffersGeometry(window, width, height, WINDOW_FORMAT_RGBA_8888);
    ANativeWindow_Buffer buffer;
    LOGI("锁定 window：");
    if (ANativeWindow_lock(window, &buffer, 0) != 0) {
        LOGI("锁定 window 失败：");
        ANativeWindow_release(window);
        window = 0;
        pthread_mutex_unlock(&surfaceMutex);
        return;
    }

    LOGI("把数据刷到：");
    uint8_t *srcData = static_cast<uint8_t *>(buffer.bits);
    LOGI("视频图像的RGB数据 ：");
    int dstSize = buffer.stride * 4;
    // 视频图像的 RGB 数据
    uint8_t *dstData = data[0];
    int srcSize = linesize[0];

    LOGI("一行一行拷贝 buffer.height: %d", buffer.height);
    for (int i = 0; i < buffer.height; i++) {
        memcpy(dstData + i * dstSize, srcData + i * srcSize, srcSize);
    }

    ANativeWindow_unlockAndPost(window);
    pthread_mutex_unlock(&surfaceMutex);
    LOGI("画画完成, 释放资源 ");
}

void VideoChannel::stop() {
    LOGE("VideoChannel::stop ");

}
