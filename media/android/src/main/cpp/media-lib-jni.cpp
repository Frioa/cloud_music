#include <jni.h>
#include "utils/logger.h"
#include "Player.h"
#include "android/native_window_jni.h"

//
// Created by YueQi on 2021/12/16.
//
JavaVM *javaVm = nullptr;

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *re) {
    javaVm = vm;
    LOGI("JNI_OnLoad 初始化 JNI vm:%p", javaVm);
    return JNI_VERSION_1_4;
}

extern "C"
JNIEXPORT jlong JNICALL
Java_com_yqq_media_PlayManager_nativeInit(JNIEnv *env, jobject thiz) {
    auto *player = new Player(new Callback(0, 0, 0));
    player->callback->_javaCallback = new JavaCallback(javaVm, env, thiz);
    LOGI("Java_com_yqq_media_PlayManager_nativeInit %ld", reinterpret_cast<jlong>(player));

    return reinterpret_cast<jlong>(player);
}
extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_PlayManager_setDataSource(JNIEnv *env, jobject thiz, jlong p, jstring path_) {
    const char *path = env->GetStringUTFChars(path_, 0);
    auto *player = reinterpret_cast<Player *>(p);
    LOGI("setDataSource: nativeHandler nativeHandler: %ld path: %s", p, path);

    player->setDataSource(path);
    env->ReleaseStringUTFChars(path_, path);
}
extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_PlayManager_prepare(JNIEnv *env, jobject thiz, jlong native_handler) {
    LOGI("Java_com_yqq_media_PlayManager_prepare nativeHandler: %ld", native_handler);
    auto *player = reinterpret_cast<Player *>(native_handler);
    player->prepare();
}

extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_PlayManager_setSurface(JNIEnv *env, jobject thiz, jlong native_handler,
                                          jobject surface) {
    auto *player = reinterpret_cast<Player *>(native_handler);
    ANativeWindow *window = ANativeWindow_fromSurface(env, surface);
    player->setWindow(window);
    LOGI("Java_com_yqq_media_PlayManager_setSurface nativeHandler: %ld window: %p", native_handler, window);
}

extern "C"
JNIEXPORT void JNICALL
Java_com_yqq_media_PlayManager_start(JNIEnv *env, jobject thiz, jlong native_handler) {
    LOGI("Java_com_yqq_media_PlayManager_start nativeHandler: %ld", native_handler);

    auto *player = reinterpret_cast<Player *>(native_handler);
    player->start();
}