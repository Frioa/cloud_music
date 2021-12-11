//
// Created by YueQi on 2021/12/10.
//

#include "Callback.h"

Callback::Callback(OnPrepare prepare, OnProgress progress, OnError error) {
    onPrepare = prepare;
    onProgress = progress;
    onError = error;
}

Callback::~Callback() {
}



