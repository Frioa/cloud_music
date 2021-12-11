//
// Created by YueQi on 2021/12/8.
//

#include "Player.h"
#include <malloc.h>
#include <cstring>

extern "C" {
#include <libavformat/avformat.h>
}

void *prepare_t(void *args) {
    Player *player = static_cast<Player *> (args);
    player->_prepare();
    return nullptr;
}


Player::Player(Callback *callback) {
    this->callback = callback;
    avformat_network_init();
}


Player::~Player() {
    delete callback;
}


void Player::setDataSource(const char *p) {
    path = new char[strlen(p) + 1];
    strcpy(path, p);
}

void Player::prepare() {
    // 解析媒体文件
    // this 传给 prepare_t 的参数
    pthread_create(&prepareTask, nullptr, prepare_t, this);
}

void Player::_prepare() {
    /// 传入指针的指针，为了改变这个指针所指向的地址
    auto *avFormatAllocContext = avformat_alloc_context();
    // 参数 3 输入文件的封装格式。 avi / flv null 表示自动检测格式
    // 参数 4 map 集合配置信息，如打开网络文件
    AVDictionary *ops;
    av_dict_set(&ops, "timeout", "3000000", 0);
    int ret = avformat_open_input(&avFormatAllocContext, path, nullptr, &ops);
    if (ret != 0) {
        char *error = av_err2str(ret);
        LOGE("打开 %s 失败，返回：%d %s", path, ret, error);
        return;
    }

}

