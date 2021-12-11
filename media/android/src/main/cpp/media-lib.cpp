#include <string>
#include "AudioChannel.h"
#include "Callback.h"
#include "Player.h"

#define CPPSURPOT extern "C" __attribute__((visibility("default"))) __attribute__((used))

extern "C" {
#include <libavutil/aes.h>
#include <libavcodec/avcodec.h>
}

CPPSURPOT
int64_t nativeInit(OnPrepare prepare, OnProgress progress, OnError error) {
    auto *player = new Player(new Callback(prepare, progress, error));

    LOGI("初始化 Player: %ld", reinterpret_cast<int64_t>(player));
    LOGI("初始化 Player: %ld", reinterpret_cast<int64_t>(player));
    player->callback->onPrepare();
    player->callback->onProgress(100);
    player->callback->onError(111);

    return reinterpret_cast<int64_t>(player);
}

CPPSURPOT
void setDataSource(int64_t nativeHandler, char *path) {
    auto *player = reinterpret_cast<Player *>(nativeHandler);
    LOGI("setDataSource: nativeHandler %ld", nativeHandler);

    player->callback->onProgress(100111);
    player->callback->onError(1111111);
}

CPPSURPOT
void prepare(int64_t nativeHandler) {
    auto *player = reinterpret_cast<Player *>(nativeHandler);
    player->prepare();
}
