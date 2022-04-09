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
        if (isMainThread) {
            env->CallVoidMethod(jobj, jmid_error, code);
        } else {
            // 得到当前线程的 env
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethod(jobj, jmid_error, code);
            vm->DetachCurrentThread();
        }
    }

    void onPrepare(double duration,bool isMainThread = true) {
        if (isMainThread) {
            env->CallVoidMethod(jobj, jmid_prepare, duration);
        } else {
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethod(jobj, jmid_prepare, duration);
            vm->DetachCurrentThread();
        }
    }

    void onProgress(int value, bool isMainThread = true) {
        if (isMainThread) {
            env->CallVoidMethod(jobj, jmid_progress, value);
        } else {
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethod(jobj, jmid_progress, value);
            vm->DetachCurrentThread();
        }
    }

    void onAudioProgress(double value, bool isMainThread = true) {
        if (isMainThread) {
            env->CallVoidMethod(jobj, jmid_audioProgress, value);
        } else {
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethod(jobj, jmid_audioProgress, value);
            vm->DetachCurrentThread();
        }
    }

    void onComplete(bool isMainThread = true) {
        if (isMainThread) {
            env->CallVoidMethod(jobj, jmid_complete);
        } else {
            JNIEnv *jniEnv;
            if (vm->AttachCurrentThread(&jniEnv, 0) != JNI_OK) {
                return;
            }
            jniEnv->CallVoidMethod(jobj, jmid_complete);
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
