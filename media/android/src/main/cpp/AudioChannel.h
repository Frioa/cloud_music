//
// Created by YueQi on 2021/12/7.
//


#ifndef MEDIA_AUDIOCHANNEL_H
#define MEDIA_AUDIOCHANNEL_H

#include <android/log.h>
#include <SLES/OpenSLES_Android.h>
#include "BaseChannel.h"
#include "utils/logger.h"

extern "C" {
#include <libswresample/swresample.h>
}

class AudioChannel : public BaseChannel {

    friend void *audioPlay_t(void *args);

    friend void bgPlayerCallback(SLAndroidSimpleBufferQueueItf queue, void *pContext);

public:
    AudioChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext,
                 AVRational &base);

    virtual ~AudioChannel();

    virtual void play();

    virtual void stop();

    virtual void decode();

private:

    void _play();

    int _getData();

    int bufferSize;
    int out_channels;
    int out_sampleSize;
    uint8_t *buffer;
    pthread_t audioDecodeTask = 0;
    pthread_t audioPlayTask = 0;
    SwrContext *swrContext = 0;
};


#endif //MEDIA_AUDIOCHANNEL_H
