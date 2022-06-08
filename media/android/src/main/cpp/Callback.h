//
// Created by YueQi on 2021/12/10.
//

#ifndef MEDIA_CALLBACK_H
#define MEDIA_CALLBACK_H
#include "utils/JavaCallback.h"

typedef void (*OnPrepare)();

typedef void (*OnProgress)(int);

typedef void (*OnError)(int);

// 打不开视频
const int FFMPEG_CAN_NOT_OPEN_URL = 1;

// 找不到媒体流
const int FFMPEG_CAN_NOT_FIND_STREAM = 2;

// 找不解码器
const int FFMPEG_CAN_NOT_DECODER_FAIL = 3;

// 无法根据解码器创建上下文
const int FFMPEG_ALLOC_CODEC_CONTEXT_FAIL = 4;

// 根据流信息，配置上下文参数失败
const int FFMPEG_CODEC_CONTEXT_PARAMETERS_FAIL = 6;

// 打开解码器失败
const int FFMPEG_OPEN_DECODER_FAIL = 7;

// 没有音视频
const int FFMPEG_NOMEDIA = 8;


class Callback {
public:
    Callback(OnPrepare prepare, OnProgress progress, OnError error);

    ~Callback();

    void onPrepare(double duration, double aspect, bool isVideo, bool isMainThread = true);

    void onProgress(int value, bool isMainThread = true);

    void onAudioProgress(double duration, bool isMainThread = true);

    void onError(int code, bool isMainThread = true);

    void onComplete(bool isMainThread = true);

    JavaCallback *_javaCallback = 0;
private:

    ///TODO: Dart callback
    OnPrepare _onPrepare;
    OnProgress _onProgress;
//    OnProgress _onAudioProgress;
    OnError _onError;
};


#endif //MEDIA_CALLBACK_H
