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
    AVFrame *frame = nullptr;
    av_image_alloc(data, linesize, avCodecContext->width, avCodecContext->height, AV_PIX_FMT_ARGB,
                   1);
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


void VideoChannel::stop() {
    AVPacket *packet;
    while (isPlaying) {
        // 阻塞
        // 1. 能够取到数据
        // 2. 停止播放: 退出循环
        int ret = pkt_queue.deQueue(packet);
        if (!isPlaying) break;
        if (!ret) continue;

        // 向解码器发送解码数据
        ret = avcodec_send_packet(avCodecContext, packet);
        releaseAvPacket(packet);

        if (ret < 0) {
            break;
        }

        // 从解码器中取出解码好的数据
        AVFrame *frame = av_frame_alloc();
        ret = avcodec_receive_frame(avCodecContext, frame);
        if (ret == AVERROR(EAGAIN)) { // 此数据包的数据已经读取完
            // 取到的可能是 B 帧需要其他帧做参考
            continue;
        } else if (ret < 0) {
            break;
        }
        frame_queue.enQueue(frame);
    }
    releaseAvPacket(packet);

}

void VideoChannel::decode() {

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
    pthread_mutex_lock(&surfaceMutex);
    if (pTexture) {
        pthread_mutex_unlock(&surfaceMutex);

        return;
    }

    auto *window = ASurfaceTexture_acquireANativeWindow(pTexture);
    ANativeWindow_setBuffersGeometry(window, width, height, WINDOW_FORMAT_RGBA_8888);
    ANativeWindow_Buffer buffer;
    if (ANativeWindow_lock(window, &buffer, 0) != 0) {
        ANativeWindow_release(window);
        window = 0;
        pthread_mutex_unlock(&surfaceMutex);
        return;
    }

    // 把数据刷到 buffer
    uint8_t *srcData = static_cast<uint8_t *>(buffer.bits);
    // 视频图像的RGB数 据
    int dstSize = buffer.stride * 4;
    // 视频图像的 RGB 数据
    uint8_t *dstData = data[0];
    int srcSize = linesize[0];

    // 一行一行拷贝
    for (int i = 0; i < buffer.height; i++) {
        memcpy(dstData + i * dstSize, srcData + i * srcSize, srcSize);
    }


    ANativeWindow_unlockAndPost(window);
    pthread_mutex_unlock(&surfaceMutex);
}
