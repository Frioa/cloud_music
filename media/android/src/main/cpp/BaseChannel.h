//
// Created by YueQi on 2021/12/11.
//

#ifndef MEDIA_BASECHANNEL_H
#define MEDIA_BASECHANNEL_H

#include "Callback.h"
#include "utils/SafeQueue.h"

extern "C" {
#include <libavcodec/avcodec.h>
}

class BaseChannel {
public:
    BaseChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext, AVRational
    &base) : channelId(channelId), callback(callback), avCodecContext(avCodecContext),
             time_base(base) {
        pkt_queue.setReleaseHandle(releaseAvPacket);
        frame_queue.setReleaseHandle(releaseAvFrame);
    }

    virtual ~BaseChannel() {
        if (avCodecContext) {
            avcodec_close(avCodecContext);
            avcodec_free_context(&avCodecContext);
            avCodecContext = nullptr;
        }
        pkt_queue.clear();
        frame_queue.clear();
    }

    virtual void play() = 0;

    virtual void stop() = 0;

    virtual void decode() = 0;

    void clear() {
        pkt_queue.clear();
        frame_queue.clear();
    }

    void setEnable(bool e) {
        pkt_queue.setEnable(e);
        frame_queue.setEnable(e);
    }

    static void releaseAvFrame(AVFrame *&frame) {
        if (frame) {
            av_frame_free(&frame);
            frame = 0;
        }
    }

    static void releaseAvPacket(AVPacket *&packet) {
        if (packet) {
            av_packet_free(&packet);
            packet = 0;
        }
    }

public:
    int channelId;
    Callback *callback;
    AVCodecContext *avCodecContext;
    AVRational time_base;

    SafeQueue<AVPacket *> pkt_queue;
    SafeQueue<AVFrame *> frame_queue;

    bool isPlaying = false;
    double clock = 0;
};

#endif //MEDIA_BASECHANNEL_H
