//
// Created by YueQi on 2021/12/10.
//

#include "Callback.h"

const bool enableJava = true;

Callback::Callback(OnPrepare prepare, OnProgress progress, OnError error) {
    this->_onPrepare = prepare;
    this->_onProgress = progress;
    this->_onError = error;
}

Callback::~Callback() {
    delete _javaCallback;
    _javaCallback = nullptr;
}

void Callback::onPrepare(bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onPrepare(isMainThread);
    }
    _onPrepare();
}

void Callback::onProgress(int value, bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onProgress(value, isMainThread);
    }
    _onProgress(value);
}

void Callback::onError(int code, bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onError(code, isMainThread);
    }
    _onError(code);
}





