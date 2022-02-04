//
// Created by YueQi on 2021/12/11.
//

#ifndef MEDIA_VIDEOCHANNEL_H
#define MEDIA_VIDEOCHANNEL_H

//#include <android/surface_texture.h>
#include "AudioChannel.h"
#include <android/native_window.h>


class VideoChannel : public BaseChannel {

    friend void *videoPlay_t(void *arg);

public:
    VideoChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext, AVRational
    &base, int fps);

    virtual ~VideoChannel();

    virtual void play();

    virtual void stop();

    void stopWork();

    virtual void decode();

    void setWindow(ANativeWindow *window_);

//    void setSurfaceTexture(ASurfaceTexture *pTexture);

private:
    void _play();

private:
    int fps = 0;
    pthread_mutex_t surfaceMutex;
    pthread_t videoDecodeTask = 0;
    pthread_t videoPlayTask = 0;
    bool isPlaying = false;
//    ASurfaceTexture *pTexture = 0;

    ANativeWindow *window = 0;
public:
    AudioChannel *audioChannel = 0;

    void onDraw(uint8_t **data, int *linesize, int width, int height);
};


#endif //MEDIA_VIDEOCHANNEL_H
