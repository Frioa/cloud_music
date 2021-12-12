#include <string>
#include "Player.h"
#include "jni.h"
#include <android/surface_texture_jni.h>

#define CPPSURPOT extern "C" __attribute__((visibility("default"))) __attribute__((used))

JavaVM *javaVm = nullptr;

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *re) {
    javaVm = vm;
    LOGI("JNI_OnLoad 初始化 JNI vm:%p", javaVm);
    return JNI_VERSION_1_4;
}

CPPSURPOT
int64_t nativeInit(OnPrepare prepare, OnProgress progress, OnError error) {
    auto *player = new Player(new Callback(prepare, progress, error));
    LOGI("初始化 Player: %ld", reinterpret_cast<int64_t>(player));

    player->setDataSource("/data/data/com.yqq.cloudmusic.cloud_music/cache/1.mp4");

    return reinterpret_cast<int64_t>(player);
}

CPPSURPOT
void setDataSource(int64_t nativeHandler, char *path) {
    auto *player = reinterpret_cast<Player *>(nativeHandler);
    LOGI("setDataSource: nativeHandler %ld", nativeHandler);
    player->setDataSource(path);
}

CPPSURPOT
void prepare(int64_t nativeHandler) {
    LOGI("prepare: nativeHandler %ld", nativeHandler);
    auto *player = reinterpret_cast<Player *>(nativeHandler);
    player->prepare();
}

CPPSURPOT
void start(int64_t nativeHandler) {
    auto *player = reinterpret_cast<Player *>(nativeHandler);
    LOGI("start: nativeHandler %ld", nativeHandler);
    player->start();
}

//extern "C"
//JNIEXPORT jlong JNICALL
//Java_com_yqq_media_DartCallback_surfaceTexture(JNIEnv *env, jobject thiz, jlong native_handler,
//                                               jobject texture) {
//    auto *player = reinterpret_cast<Player *>(native_handler);
//    player->callback->_javaCallback = new JavaCallback(javaVm, env, thiz);
//    auto *surface = ASurfaceTexture_fromSurfaceTexture(env, texture);
//    player->setSurfaceTexture(surface);
//    player->callback->onPrepare();
//    LOGI("初始化 DartCallback_surfaceTexture . javaVm:%p", javaVm);
//    return 0;
//}
extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_DartCallback_surfaceTexture(JNIEnv *env, jobject thiz, jlong p, jobject t) {
    auto *player = reinterpret_cast<Player *>(p);
    player->callback->_javaCallback = new JavaCallback(javaVm, env, thiz);
    auto *surface = ASurfaceTexture_fromSurfaceTexture(env, t);
    player->setSurfaceTexture(surface);
    // TODO:
    player->callback->onPrepare();
    LOGI("初始化 DartCallback_surfaceTexture . javaVm:%p", javaVm);
}
extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_DartCallback_ceshi(JNIEnv *env, jobject thiz, jlong p) {
    auto *player = reinterpret_cast<Player *>(p);
    player->callback->onPrepare();
}