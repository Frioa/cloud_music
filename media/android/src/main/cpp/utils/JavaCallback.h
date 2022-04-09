//
// Created by YueQi on 2021/12/12.
//

#ifndef MEDIA_JAVACALLBACK_H
#define MEDIA_JAVACALLBACK_H

#include <jni.h>
#include "logger.h"

class JavaCallback {

public:
    JavaCallback(JavaVM *vm, JNIEnv *env, jobject &_job) : vm(vm), env(env) {
        jobj = env->NewGlobalRef(_job);
        jclass jclazz = env->GetObjectClass(jobj);

        jmid_error = env->GetMethodID(jclazz, "onError", "(I)V");
        jmid_prepare = env->GetMethodID(jclazz, "onPrepare", "(D)V");
        jmid_progress = env->GetMethodID(jclazz, "onProgress", "(I)V");
        jmid_audioProgress = env->GetMethodID(jclazz, "onAudioProgress", "(D)V");
        jmid_complete = env->GetMethodID(jclazz, "onComplete", "()V");
    };

    ~JavaCallback() {
        env->DeleteGlobalRef(jobj);
        jobj = 0;
    }

    void onError(int code, bool isMainThread = true) {
        _callback(isMainThread, jmid_error, code);
    }

    void onPrepare(double duration, bool isMainThread = true) {
        _callback(isMainThread, jmid_prepare, duration);
    }

    void onProgress(int value, bool isMainThread = true) {
        _callback(isMainThread, jmid_progress, value);
    }

    void onAudioProgress(double value, bool isMainThread = true) {
        _callback(isMainThread, jmid_audioProgress, value);
    }

    void onComplete(bool isMainThread = true) {
        _callback(isMainThread, jmid_complete);
    }

    void _callback(bool isMainThread = true, jmethodID methodID = nullptr, ...) {
        va_list args;
        va_start(args, methodID);

        if (isMainThread) {
            env->CallVoidMethodV(jobj, methodID, args);
        } else {
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethodV(jobj, methodID, args);
            vm->DetachCurrentThread();
        }
    }

public:
    JavaVM *vm;
    JNIEnv *env;
    jobject jobj = 0;

    jmethodID jmid_error;
    jmethodID jmid_prepare;
    jmethodID jmid_progress;
    jmethodID jmid_audioProgress;
    jmethodID jmid_complete;
};


#endif //MEDIA_JAVACALLBACK_H
