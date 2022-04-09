//
// Created by YueQi on 2021/12/10.
//

#include "Callback.h"

const bool enableJava = true;

Callback::Callback(OnPrepare prepare, OnProgress progress , OnError error) {
    this->_onPrepare = prepare;
    this->_onProgress = progress;
//    this->_onAudioProgress = audioProgress;
    this->_onError = error;
}

Callback::~Callback() {
    delete _javaCallback;
    _javaCallback = nullptr;
}

void Callback::onPrepare(double duration, bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onPrepare(duration, isMainThread);
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

void Callback::onAudioProgress(double duration, bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onAudioProgress(duration, isMainThread);
    }
//    _onAudioProgress();
}

void Callback::onComplete(bool isMainThread) {
    if (enableJava) {
        return _javaCallback->onComplete(isMainThread);
    }
//    _onPrepare();
}







