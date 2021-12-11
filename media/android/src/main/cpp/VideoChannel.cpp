//
// Created by YueQi on 2021/12/11.
//

#include "VideoChannel.h"

VideoChannel::VideoChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext,
                           AVRational &base, int fps) : BaseChannel(channelId, callback,
                                                                    avCodecContext, base),
                                                        fps(fps) {

}


VideoChannel::~VideoChannel() {

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
