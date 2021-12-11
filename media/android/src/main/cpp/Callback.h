//
// Created by YueQi on 2021/12/10.
//

#ifndef MEDIA_CALLBACK_H
#define MEDIA_CALLBACK_H

typedef void (*OnPrepare)();

typedef void (*OnProgress)(int);

typedef void (*OnError)(int);

class Callback {
public:

    Callback(OnPrepare prepare, OnProgress progress, OnError error);

    ~Callback();

    OnPrepare onPrepare;
    OnProgress onProgress;
    OnError onError;
};


#endif //MEDIA_CALLBACK_H
