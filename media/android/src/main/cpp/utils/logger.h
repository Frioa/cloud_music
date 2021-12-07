//
// Created by YueQi on 2021/12/7.
//

#ifndef MEDIA_LOGGER_H
#define MEDIA_LOGGER_H


#define LOG_TAG "C++："
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANROID_LOG_ERROR, TAG, __VA_ARGS__)
#endif //MEDIA_LOGGER_H
