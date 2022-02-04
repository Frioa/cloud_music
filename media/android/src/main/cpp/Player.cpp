//
// Created by YueQi on 2021/12/8.
//

#include "Player.h"
#include <malloc.h>
#include <cstring>

extern "C" {
#include <libavutil/time.h>
}


Player::Player(Callback *callback) {
    this->callback = callback;
    pthread_mutex_init(&seekMutex, 0);
    avformat_network_init();
}

Player::~Player() {
    avformat_network_deinit();
    pthread_mutex_destroy(&seekMutex);

    delete callback;
    callback = nullptr;
    if (path) {
        delete[] path;
        path = nullptr;
    }
}

void Player::setDataSource(const char *p) {
    delete path;
    path = new char[strlen(p) + 1];
    strcpy(path, p);
    LOGI("Player::setDataSource: path: %s", path);
}

void *prepare_t(void *args) {
    Player *player = static_cast<Player *> (args);
    player->_prepare();
    return nullptr;
}

void Player::prepare() {
    // 解析媒体文件
    // this 传给 prepare_t 的参数
    pthread_create(&prepareTask, nullptr, prepare_t, this);
}

void Player::_prepare() {
    /**
     * 1. 打开媒体文件
     */
    /// 传入指针的指针，为了改变这个指针所指向的地址
    avFormatContext = avformat_alloc_context();
    // 参数 3 输入文件的封装格式。 avi / flv null 表示自动检测格式
    // 参数 4 map 集合配置信息，如打开网络文件
    int ret = avformat_open_input(&avFormatContext, path, nullptr, nullptr);
    if (ret != 0) {
        LOGE("打开 %s 失败，返回：%d %s", path, ret, av_err2str(ret));
        callback->onError(FFMPEG_CAN_NOT_OPEN_URL, false);
        return;
    }

    /**
     * 2. 查找媒体流
     */
    ret = avformat_find_stream_info(avFormatContext, nullptr);
    if (ret < 0) {
        LOGE("查找媒体流 %s 失败，返回：%d %s", path, ret, av_err2str(ret));
        callback->onError(FFMPEG_CAN_NOT_FIND_STREAM);
        return;
    }

    // 得到视频时长单位 s
    duration = avFormatContext->duration / AV_TIME_BASE;
    LOGE("_prepare 媒体文件的单位时长：duration=%ld", duration);

    // 这个媒体文件有几个流
    for (int i = 0; i < avFormatContext->nb_streams; i++) {
        LOGE("_prepare 处理媒体文件中的流文件 i=%d -------------", i);
        // AVStream: 包含解码信息
        AVStream *avStream = avFormatContext->streams[i];
        AVCodecParameters *param = avStream->codecpar;
        // 解码信息
        const AVCodec *dec = avcodec_find_decoder(param->codec_id);
        if (!dec) {
            LOGE("_prepare 查找解码器失败 ");
            callback->onError(FFMPEG_OPEN_DECODER_FAIL, false);
            return;
        }

        AVCodecContext *codecContext = avcodec_alloc_context3(dec);
        // 把解码信息赋值给了解码上下文中的各种成员, 可以获得视频的 宽、高。
        ret = avcodec_parameters_to_context(codecContext, param);
        if (ret < 0) {
            LOGE("_prepare 根据流信息，配置上下文参数失败 ");
            callback->onError(FFMPEG_CODEC_CONTEXT_PARAMETERS_FAIL, false);
            return;
        }

        // 打开解码器
        ret = avcodec_open2(codecContext, dec, nullptr);
        if (ret != 0) {
            LOGE("_prepare 打开解码器失败 ");
            callback->onError(FFMPEG_OPEN_DECODER_FAIL, false);
            return;
        }

        int fps = (int) av_q2d(avStream->avg_frame_rate);
        switch (param->codec_type) {
            case AVMEDIA_TYPE_AUDIO:
                LOGE("_prepare 当前处理的是处理音频流 i=%d", i);
                audioChannel = new AudioChannel(i, callback, codecContext, avStream->time_base);
                break;
            case AVMEDIA_TYPE_VIDEO:
                if (isnan(fps) || fps == 0) {
                    fps = (int) av_q2d(avStream->r_frame_rate);
                }
                if (isnan(fps) || fps == 0) {// 猜 fps
                    fps = (int) av_q2d(av_guess_frame_rate(avFormatContext, avStream, 0));
                }

                LOGE("_prepare 当前处理的是处理视频流  i=%d fps=%d den=%d", i, fps, avStream->time_base.den);
                LOGE("_prepare 宽高 width=%d height=%d", codecContext->width, codecContext->height);
                videoChannel = new VideoChannel(i, callback, codecContext, avStream->time_base,
                                                fps);
                break;
            default:
                break;
        }

    }

    // 如果媒体文件中没有视频、
    if (!videoChannel && !audioChannel) {
        LOGE("_prepare 媒体文件没有视频 ");
        callback->onError(FFMPEG_NOMEDIA, false);
        return;
    }

    callback->onPrepare(duration, false);
}

void *start_t(void *arg) {
    auto *player = reinterpret_cast<Player *>(arg);
    player->_start();
    return nullptr;
}

void Player::start() {
    // 1. 读取媒体源数据
    // 2. 根据数据格式放入 Audio、Video 队列中

    isPlaying = true;
    if (videoChannel) {
        videoChannel->audioChannel = audioChannel;
        videoChannel->play();
    }
    if (audioChannel) {
        audioChannel->play();
    }
    pthread_create(&startTask, nullptr, start_t, this);
}

void Player::_start() {
    int ret;
    while (isPlaying) {
        /// 读取文件的时候没有网络请求一下子读完，防止 OOM
        if (audioChannel && audioChannel->pkt_queue.size() > 100) {
            av_usleep(1000 * 10);
            continue;
        }

        if (videoChannel && videoChannel->pkt_queue.size() > 100) {
            av_usleep(1000 * 10);
            continue;
        }

        // 锁住 avFormatContext
        pthread_mutex_lock(&seekMutex);

        // 读数据放入 Packet
        AVPacket *avPacket = av_packet_alloc();
        ret = av_read_frame(avFormatContext, avPacket);

        pthread_mutex_unlock(&seekMutex);
        if (isSeek) {
            av_packet_free(&avPacket);
            continue;
        }

        if (ret == 0) {
            if (videoChannel && avPacket->stream_index == videoChannel->channelId) {
                // 开始播放视频
                videoChannel->pkt_queue.enQueue(avPacket);
            } else if (audioChannel && avPacket->stream_index == audioChannel->channelId) {
                // 开始播放音频
                audioChannel->pkt_queue.enQueue(avPacket);
            } else {
                // 其他流
                av_packet_free(&avPacket);
            }
        } else {
            av_packet_free(&avPacket);
            if (ret == AVERROR_EOF) {
                // 读取完毕不一定播放结束
                bool videoChannelEmpty = (videoChannel == nullptr) ||
                                         (videoChannel->pkt_queue.empty() &&
                                          videoChannel->frame_queue.empty());
                bool audioChannelEmpty = (audioChannel == nullptr) ||
                                         (audioChannel->pkt_queue.empty() &&
                                          audioChannel->frame_queue.empty());

                if (videoChannelEmpty && audioChannelEmpty) {
                    LOGE("播放完毕");
                    break;
                }
            } else {
                LOGE("读取数据包失败，返回:%d 错误描述：%s", ret, av_err2str(ret));
                break;
            }
        }

    }
    isPlaying = false;
    audioChannel->stop();
    videoChannel->stop();
}


void Player::seek(double time) {
    LOGI("Player::seek1 %lf %ld", time, duration);

    if (time >= duration) return;
    LOGI("Player::seek1");

    if (!audioChannel && !videoChannel) return;
    LOGI("Player::seek2");

    if (!avFormatContext) return;
    LOGI("Player::seek3");

    isSeek = true;
    pthread_mutex_lock(&seekMutex);
    int64_t seek = time * AV_TIME_BASE;
    av_seek_frame(avFormatContext, -1, seek, AVSEEK_FLAG_BACKWARD);

    if (audioChannel) {
        audioChannel->stop();
        audioChannel->clear();
        audioChannel->play();
    }
    if (videoChannel) {
        videoChannel->stopWork();
        videoChannel->clear();
        videoChannel->play();
    }

    pthread_mutex_unlock(&seekMutex);
    isSeek = false;
}


void Player::stop() {
    LOGI("Player::stop()");
    isPlaying = false;
    // 等prepareTask,startTask执行完，在执行 release();
    pthread_join(prepareTask, nullptr);
    pthread_join(startTask, nullptr);

    release();
}

void Player::release() {
    LOGI("Player::release()");
    if (audioChannel) {
        delete audioChannel;
        audioChannel = nullptr;
    }

    if (videoChannel) {
        delete videoChannel;
        videoChannel = nullptr;
    }

    if (avFormatContext) {
        avformat_close_input(&avFormatContext);
        avformat_free_context(avFormatContext);
        avFormatContext = nullptr;
    }
}


//void Player::setSurfaceTexture(ASurfaceTexture *surface) {
//    surfaceTexture = surface;
//    if (videoChannel) {
//        videoChannel->setSurfaceTexture(surfaceTexture);
//    }
//}

void Player::setWindow(ANativeWindow *window_) {
    window = window_;
    if (videoChannel) {
        videoChannel->setWindow(window);
    }
}



