//
// Created by YueQi on 2021/12/8.
//

#ifndef MEDIA_PLAYER_H
#define MEDIA_PLAYER_H

#include <pthread.h>

#include "utils/SafeQueue.h"
#include "utils/logger.h"
#include "utils/JavaCallback.h"
#include "Callback.h"
#include "VideoChannel.h"
#include "AudioChannel.h"

extern "C" {
#include <libavformat/avformat.h>
}


class Player {
    friend void *prepare_t(void *args);

    friend void *start_t(void *args);

public:
    Player(Callback *callback);

    ~Player();

    void setDataSource(const char *s);

    void prepare();

    void start();

    void seek(double curTime);

    void stop();

    void release();

    void setWindow(ANativeWindow *window_);

//    void setSurfaceTexture(ASurfaceTexture *surface);

    Callback *callback = 0;
//    JavaCallback *javaCallback = 0;

private:
    void _prepare();

    void _start();

private:
    char *path = nullptr;
    pthread_t prepareTask = 0;
    int64_t duration = 0;
    AudioChannel *audioChannel = nullptr;
    VideoChannel *videoChannel = nullptr;

    bool isPlaying = false;

    bool isSeek = false;
    pthread_mutex_t seekMutex;

    pthread_t startTask = 0;
    AVFormatContext *avFormatContext = nullptr;
//    ASurfaceTexture *surfaceTexture = nullptr;
public:
    ANativeWindow *window = 0;
};


#endif //MEDIA_PLAYER_H
