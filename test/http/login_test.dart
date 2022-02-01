import 'package:cloud_music/network/network.dart';
import 'package:cloud_music/utils/logger_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final dio = Dio();
  final client = NestLoginClient(dio);

  group('登录', () {
    test('二维码登录', () async {
      String key = '';
      await client.getQrKey().then((it) async {
        key = it.data.unikey;
        logger.d('getQrKey $key');
        return await client.getQrCreate(key);
      }).then((value) async {
        logger.d('getQrCreate $value');
        return await client.getQrCheck(key);
      }).then((value) {
        logger.d('getQrCheck $value');
      });
    });

    const phone = 'xxxxxxxxx';
    test('发送短信验证码', () async {
      await client.sentCaptcha(phone).then((value) async {
        logger.d('sentCaptcha $value');
      });
    });
    test('验证短信验证码', () async {
      const captcha = '7931';
      await client.verifyCaptcha(phone, captcha).then((value) {
        logger.d('sentVerify $value');
      });
    });
  });
}
