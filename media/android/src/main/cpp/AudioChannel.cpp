//
// Created by YueQi on 2021/12/7.
//

#include "AudioChannel.h"
#include "SLES/OpenSLES.h"


AudioChannel::AudioChannel(int channelId, Callback *callback, AVCodecContext *avCodecContext,
                           AVRational &base) : BaseChannel(channelId, callback, avCodecContext,
                                                           base) {
    // 声道数：2
    out_channels = av_get_channel_layout_nb_channels(AV_CH_LAYOUT_STEREO);
    // 采样位：2
    out_sampleSize = av_get_bytes_per_sample(AV_SAMPLE_FMT_S16);
    // 采样率
    int out_sampleRate = 44100;
    bufferSize = out_channels * out_sampleSize * out_sampleRate;
    // 计算转换后最大字节数
    buffer = static_cast<uint8_t *>(malloc(bufferSize));

}

AudioChannel::~AudioChannel() {
    free(buffer);
    buffer = nullptr;
}

void *audioPlay_t(void *args) {
    AudioChannel *audioChannel = static_cast<AudioChannel *>(args);
    audioChannel->_play();

    return nullptr;
}

void *audioDecode_t(void *args) {
    auto *audioChannel = static_cast<AudioChannel *>(args);
    audioChannel->decode();

    return nullptr;
}


void AudioChannel::play() {

    isPlaying = true;
    setEnable(true);

    // 创建转换器
    swrContext = swr_alloc_set_opts(nullptr,// 自动创建转换器
                                    AV_CH_LAYOUT_STEREO, // 双声道
                                    AV_SAMPLE_FMT_S16, // 十六位
                                    44100, // 采样率
                                    avCodecContext->channel_layout, // 输入的声道数
                                    avCodecContext->sample_fmt,
                                    avCodecContext->sample_rate,
                                    0,
                                    nullptr

    );
    swr_init(swrContext);

    // 解码
    pthread_create(&audioDecodeTask, nullptr, audioDecode_t, this);

    // 播放
    pthread_create(&audioPlayTask, nullptr, audioPlay_t, this);
}

void AudioChannel::decode() {
    AVPacket *packet = nullptr;
    while (isPlaying) {
        int ret = pkt_queue.deQueue(packet);
        if (!isPlaying) break;
        if (!ret) continue;// 取出 AVPacket 失败再次尝试去取

        ret = avcodec_send_packet(avCodecContext, packet);
        releaseAvPacket(packet);
        if (ret < 0) break;

        AVFrame *frame = av_frame_alloc();
        ret = avcodec_receive_frame(avCodecContext, frame);

        if (ret == AVERROR(EAGAIN)) {
            continue;
        } else if (ret < 0) {
            break;
        }

        frame_queue.enQueue(frame);
    }
    releaseAvPacket(packet);
}

/**
 * 启动播放器后的回调，用来获取数据的方法
 * @param queue : 将播放的数据放入这个队列
 * @param pContext：AudioChannel 对象
 * @return
 */
void bgPlayerCallback(SLAndroidSimpleBufferQueueItf queue, void *pContext) {
    auto *audioChannel = static_cast<AudioChannel *>(pContext);
    int dataSize = audioChannel->_getData();
    if (dataSize > 0) {
        (*queue)->Enqueue(queue, audioChannel->buffer, dataSize);
    }
}

int AudioChannel::_getData() {
    int dataSize = 0;
    AVFrame *frame = nullptr;
    while (isPlaying) {
        int ret = frame_queue.deQueue(frame);
        if (!isPlaying) break;
        if (!ret) continue;

        int nb = swr_convert(swrContext, &buffer, bufferSize,
                             (const uint8_t **) frame->data,
                             frame->nb_samples// 一个声道的有效字节数
        );

        dataSize = nb * out_channels * out_sampleSize;
        // 播放这段声音的时间
        clock = frame->pts * av_q2d(time_base);

        releaseAvFrame(frame);
        break;
    }
    releaseAvFrame(frame);
    return dataSize;
}

void AudioChannel::_play() {
    /// 创建引擎对象
    engineObj = nullptr;
    SLresult result = slCreateEngine(&engineObj, 0, NULL, 0, NULL, NULL);
    if (SL_RESULT_SUCCESS != result) return;

    /// 初始化引擎对象，SL_BOOLEAN_FALSE：同步初始化
    result = (*engineObj)->Realize(engineObj, SL_BOOLEAN_FALSE);
    if (SL_RESULT_SUCCESS != result) return;

    /// 获取引擎的接口，后续通过接口创建混音器。
    SLEngineItf engineInterface = nullptr;
    result = (*engineObj)->GetInterface(engineObj, SL_IID_ENGINE, &engineInterface);

    if (SL_RESULT_SUCCESS != result) return;

    /**
     * 2. 设置混音器
     */
    // 通过接口创建混音器
    outputMixObject = nullptr;
    result = (*engineInterface)->CreateOutputMix(engineInterface, &outputMixObject, 0, nullptr,
                                                 nullptr);
    if (SL_RESULT_SUCCESS != result) return;

    // 初始化混音器
    result = (*outputMixObject)->Realize(outputMixObject, SL_BOOLEAN_FALSE);
    if (SL_RESULT_SUCCESS != result) return;

    /**
     * 3. 设置播放器
     */

    // android 队列格式
    SLDataLocator_AndroidSimpleBufferQueue android_queue = {SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE,
                                                            2};
    // {pcm 数据格式：pcm、声道数、采样率、采样位、容器大小、通道掩码（双声道）、字节序（小端）}
    SLDataFormat_PCM pcm = {SL_DATAFORMAT_PCM, 2,  // PCM, 声道数
                            SL_SAMPLINGRATE_44_1,// 采样率、
                            SL_PCMSAMPLEFORMAT_FIXED_16, // 采样位
                            SL_PCMSAMPLEFORMAT_FIXED_16,// 容器大小
                            SL_SPEAKER_FRONT_LEFT | SL_SPEAKER_FRONT_RIGHT,// 通道掩码（双声道）
                            SL_BYTEORDER_LITTLEENDIAN// 字节序（小端）
    };

    // 数据源(数据获取器+格式)
    SLDataSource slDataSource = {&android_queue, &pcm};
    // 设置混音器
    SLDataLocator_OutputMix outputMix = {SL_DATALOCATOR_OUTPUTMIX, outputMixObject};
    SLDataSink audioSink = {&outputMix, nullptr};

    // 播放器相当于对混音器进行了一层包装，提供了开始、停止等方法。真正由混音器播放声音。
    bqPlayerObject = nullptr;
    // 需要的接口
    const SLInterfaceID ids[1] = {SL_IID_BUFFERQUEUE};
    const SLboolean req[1] = {SL_BOOLEAN_TRUE}; // 必须需要，某些接口不同的 Android 手机可能不支持。
    (*engineInterface)->CreateAudioPlayer(engineInterface, &bqPlayerObject, &slDataSource,
                                          &audioSink,
                                          1, ids, req);

    // 初始化播放器
    (*bqPlayerObject)->Realize(bqPlayerObject, SL_BOOLEAN_FALSE);

    /**
     * 播放
     */
    // 获取播放队列数据操作接口
    SLAndroidSimpleBufferQueueItf bgPlayerBufferQueue = nullptr;
    (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_BUFFERQUEUE, &bgPlayerBufferQueue);
    // 设置回调 (启动播放器后的回调，用来获取数据的方法)
    (*bgPlayerBufferQueue)->RegisterCallback(bgPlayerBufferQueue, bgPlayerCallback, this);

    // 获取播放状态接口
    SLPlayItf bgPlayerInterface = nullptr;
    (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_PLAY, &bgPlayerInterface);
    // 设置播放状态
    (*bgPlayerInterface)->SetPlayState(bgPlayerInterface, SL_PLAYSTATE_PLAYING);

    // 手动调用一次回调方法才能播放
    bgPlayerCallback(bgPlayerBufferQueue, this);
}


void AudioChannel::stop() {
    isPlaying = false;
    callback = nullptr;
    setEnable(false);
    pthread_join(audioDecodeTask, nullptr);
    pthread_join(audioPlayTask, nullptr);

    if (swrContext) {
        swr_free(&swrContext);
        swrContext = nullptr;
    }
}

void AudioChannel::_releaseOpenSLES() {
    if (bqPlayerObject) {
        (*bqPlayerObject)->Destroy(bqPlayerObject);
        bqPlayerObject = nullptr;
    }

    if (outputMixObject) {
        (*outputMixObject)->Destroy(outputMixObject);
        outputMixObject = nullptr;
    }

    if (engineObj) {
        (*engineObj)->Destroy(engineObj);
        engineObj = nullptr;
    }
}


