//
// Created by YueQi on 2021/12/8.
//

#include "Player.h"
#include <malloc.h>
#include <cstring>

Player::Player(Callback *callback) {
    this->callback = callback;
//    this->javaCallback = _javaCallback;
    videoChannel = nullptr;
    avformat_network_init();
}

Player::~Player() {
    delete callback;
//    delete javaCallback;
}

void Player::setDataSource(const char *p) {
    path = new char[strlen(p) + 1];
    strcpy(path, p);
    LOGI("layer::setDataSource: path: %s", path);
}

void *prepare_t(void *args) {

    Player *player = static_cast<Player *> (args);
    LOGI("prepareTask 子线程准备完成");
    player->callback->onPrepare(false);
//    player->_prepare();
    return nullptr;
}

void Player::prepare() {
    // 解析媒体文件
    // this 传给 prepare_t 的参数
    LOGI("Player::prepare");
    callback->onPrepare();
//    pthread_create(&prepareTask, nullptr, prepare_t, this);
}

void Player::_prepare() {
    /**
     * 1. 打开媒体文件
     */
    /// 传入指针的指针，为了改变这个指针所指向的地址
    avFormatContext = avformat_alloc_context();
    // 参数 3 输入文件的封装格式。 avi / flv null 表示自动检测格式
    // 参数 4 map 集合配置信息，如打开网络文件
    AVDictionary *ops;
    av_dict_set(&ops, "timeout", "3000000", 0);
    int ret = avformat_open_input(&avFormatContext, path, nullptr, &ops);
    if (ret != 0) {
        LOGE("打开 %s 失败，返回：%d %s", path, ret, av_err2str(ret));
        callback->onError(FFMPEG_CAN_NOT_OPEN_URL);
        return;
    }
    LOGE("_prepare 打开媒体文件成功");

    /**
     * 2. 查找媒体流
     */
    ret = avformat_find_stream_info(avFormatContext, nullptr);
    if (ret < 0) {
        LOGE("查找媒体流 %s 失败，返回：%d %s", path, ret, av_err2str(ret));
        callback->onError(FFMPEG_CAN_NOT_FIND_STREAM);
        return;
    }
    LOGE("_prepare 查找媒体流成功");

    // 得到视频时长单位 s
    duration = avFormatContext->duration / AV_TIME_BASE;
    LOGE("_prepare 媒体文件的单位时长：avFormatContext->duration=%ld", avFormatContext->duration);
    LOGE("_prepare 媒体文件的单位时长：duration=%ld", duration);
    LOGE("_prepare 这个媒体文件有几个流：nb_streams=%ld", avFormatContext->nb_streams);

    // 这个媒体文件有几个流
    for (int i = 0; i < avFormatContext->nb_streams; i++) {
        LOGE("_prepare 处理媒体文件中的流文件 i=%d -------------", i);
        // AVStream: 包含解码信息
        AVStream *avStream = avFormatContext->streams[i];
        // 解码信息
        AVCodecParameters *param = avStream->codecpar;
        const AVCodec *dec = avcodec_find_decoder(param->codec_id);
        if (!dec) {
            LOGE("_prepare 查找解码器失败 ");
            callback->onError(FFMPEG_OPEN_DECODER_FAIL);
            return;
        }
        LOGE("_prepare 查找解码器成功 ");

        AVCodecContext *codecContext = avcodec_alloc_context3(dec);
        // 把解码信息赋值给了解码上下文中的各种成员, 可以获得视频的 宽、高。
        ret = avcodec_parameters_to_context(codecContext, param);
        if (ret < 0) {
            LOGE("_prepare 根据流信息，配置上下文参数失败 ");
            callback->onError(FFMPEG_CODEC_CONTEXT_PARAMETERS_FAIL);
            return;
        }
        LOGE("_prepare 根据流信息，配置上下文参数成功 ");

        // 打开解码器
        ret = avcodec_open2(codecContext, dec, nullptr);
        if (ret != 0) {
            LOGE("_prepare 打开解码器失败 ");
            callback->onError(FFMPEG_OPEN_DECODER_FAIL);
            return;
        }
        LOGE("_prepare 打开解码器成功 ");

        if (param->codec_type == AVMEDIA_TYPE_AUDIO) {
            LOGE("_prepare 处理音频流 i=%d", i);


        } else if (param->codec_type == AVMEDIA_TYPE_VIDEO) {
            LOGE("_prepare 处理视频流  i=%d", i);
            int fps = (int) av_q2d(avStream->r_frame_rate);
            videoChannel = new VideoChannel(i, callback, codecContext, avStream->time_base, fps);
        }
    }
    LOGE("_prepare 初始化成功 Channel ");

    // 如果媒体文件中没有视频、
    if (!videoChannel) {
        LOGE("_prepare 媒体文件没有视频 ");
        callback->onError(FFMPEG_NOMEDIA);
        return;
    }

    callback->onPrepare();
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
        videoChannel->play();
    }
    pthread_create(&startTask, nullptr, start_t, this);
}

void Player::_start() {
    int ret;
    while (isPlaying) {
        // 读数据放入 Packet
        AVPacket *avPacket = av_packet_alloc();
        ret = av_read_frame(avFormatContext, avPacket);
        if (ret == 0) {
            if (videoChannel && avPacket->stream_index == videoChannel->channelId) {
                videoChannel->pkt_queue.enQueue(avPacket);
            }

        } else if (ret == AVERROR_EOF) {
            // 读取完毕不一定播放结束
            if (videoChannel->pkt_queue.empty() && videoChannel->frame_queue.empty()) {
                // 播放完毕
                break;
            }

        } else {
            break;
        }
    }
    isPlaying = false;
    videoChannel->stop();
}

void Player::setSurfaceTexture(ASurfaceTexture *surface) {
    surfaceTexture = surface;
    if (videoChannel) {
        videoChannel->setSurfaceTexture(surfaceTexture);
    }
}


