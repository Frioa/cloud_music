//
// Created by YueQi on 2021/12/11.
//

/**
 * 使用"互斥量"保证线程安全
 * 阻塞队列的实现：没有数据时会阻塞
 */

#ifndef MEDIA_SAFEQUEUE_H
#define MEDIA_SAFEQUEUE_H

#include <queue>
#include <pthread.h>

#include "logger.h"


using namespace std;

 template<typename T>
class SafeQueue {
    typedef void (*ReleaseHandle)(T &);

    typedef void (*SyncHandle)(queue<T> &);

public:
    SafeQueue() {
        pthread_mutex_init(&mutex, 0);
        pthread_cond_init(&cond, 0);
    }

    ~SafeQueue() {
        pthread_cond_destroy(&cond);
        pthread_mutex_destroy(&mutex);
    }

    void enQueue(T newValue) {
        pthread_mutex_lock(&mutex);
        if (mEnable) {
            q.push(newValue);
            pthread_cond_signal(&cond);
        } else {
            releaseHandle(newValue);
        }
        pthread_mutex_unlock(&mutex);
    }

    int deQueue(T &value) {
        int ret = 0;

        pthread_mutex_lock(&mutex);
        // 在多核处理器下，可能存在竞争唤醒 包括 jdk 也说明了
        while (mEnable && q.empty()) {
            pthread_cond_wait(&cond, &mutex);
        }

        if (!q.empty()) {
            value = q.front();
            q.pop();
            ret = 1;
        }
        pthread_mutex_unlock(&mutex);
        return ret;
    }

    void setEnable(bool enable) {
        pthread_mutex_lock(&mutex);
        this->mEnable = enable;
        pthread_cond_signal(&cond);
        pthread_mutex_unlock(&mutex);
    }

    bool empty() {
        return q.empty();
    }

    int size() {
        return q.size();
    }

    void clear() {
        pthread_mutex_lock(&mutex);
        int size = this->size();
        for (int i = 0; i < size; i++) {
            T value = q.front();
            releaseHandle(value);
            q.pop();
        }

        pthread_mutex_unlock(&mutex);
    }

    void sync() {
        pthread_mutex_lock(&mutex);
        syncHandle(q);
        pthread_mutex_unlock(&mutex);
    }

    void setReleaseHandle(ReleaseHandle r) {
        releaseHandle = r;
    }

    void setSyncHandle(SyncHandle s) {
        syncHandle = s;
    }

private:
    pthread_cond_t cond;
    pthread_mutex_t mutex;
    queue<T> q;
    bool mEnable = false;
    ReleaseHandle releaseHandle;
    SyncHandle syncHandle;
};


#endif //MEDIA_SAFEQUEUE_H
