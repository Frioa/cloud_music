//
// Created by YueQi on 2021/12/8.
//

#ifndef MEDIA_PLAYER_H
#define MEDIA_PLAYER_H

#include <pthread.h>
#include "utils/SafeQueue.h"
#include "utils/logger.h"
#include "Callback.h"
//#include "BaseChannel.h"
#include "VideoChannel.h"

extern "C" {
#include <libavformat/avformat.h>
#include <libavcodec/avcodec.h>
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

    Callback *callback;

private:
    void _prepare();
    void _start();

private:
    char *path = nullptr;
    pthread_t prepareTask = 0;
    int64_t duration = 0;
    VideoChannel *videoChannel = nullptr;

    bool isPlaying = false;
    pthread_t startTask;
    AVFormatContext *avFormatContext;
};


#endif //MEDIA_PLAYER_H