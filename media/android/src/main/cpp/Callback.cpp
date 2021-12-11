//
// Created by YueQi on 2021/12/10.
//

#include "Callback.h"

Callback::Callback(OnPrepare prepare, OnProgress progress, OnError error) {
    this->onPrepare = prepare;
    this->onProgress = progress;
    this->onError = error;
}

Callback::~Callback() = default;



