//
// Created by YueQi on 2021/12/8.
//

#ifndef MEDIA_PLAYER_H
#define MEDIA_PLAYER_H

#include <pthread.h>
#include "utils/logger.h"
#include "Callback.h"

class Player {
    friend void *prepare_t(void *args);

public:
    Player(Callback *callback);

    ~Player();

    void setDataSource(const char *s);

    void prepare();

    Callback *callback;

private:
    char *path;
    pthread_t prepareTask;

    void _prepare();
};


#endif //MEDIA_PLAYER_H
