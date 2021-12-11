//
// Created by YueQi on 2021/12/11.
//

#ifndef MEDIA_VIDEOCHANNEL_H
#define MEDIA_VIDEOCHANNEL_H

#include "BaseChannel.h"

extern "C" {
#include <libavcodec/avcodec.h>
}


class VideoChannel : public BaseChannel {

    friend void* videoPlay_t(void* arg);
public:
    VideoChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext, AVRational
    &base, int fps);

    virtual ~VideoChannel();

    virtual void play();

    virtual void stop();

    virtual void decode();

private:
    void _play();
private:
    int fps = 0;
    pthread_t videoDecodeTask = 0;
    pthread_t videoPlayTask = 0;

    bool isPlaying = false;
};


#endif //MEDIA_VIDEOCHANNEL_H
