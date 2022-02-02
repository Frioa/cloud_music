import 'package:cloud_music/network/network.dart';
import 'package:cloud_music/utils/logger_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

const cookie =
    'MUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fneapi%2Ffeedback%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fweapi%2Ffeedback%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fapi%2Fclientlog%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fapi%2Ffeedback%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Feapi%2Fclientlog%3B%3BMUSIC_U%3De02c8c894f7c792f960469ebba8b98eda7bcd78d23551251827bdd29323fcd1d993166e004087dd3d78b6050a17a35e705925a4e6992f61d07c385928f88e8de%3B%20Max-Age%3D1296000%3B%20Expires%3DThu%2C%2017%20Feb%202022%2001%3A39%3A06%20GMT%3B%20Path%3D%2F%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fwapi%2Fclientlog%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fapi%2Ffeedback%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fneapi%2Ffeedback%3B%3B__remember_me%3Dtrue%3B%20Max-Age%3D1296000%3B%20Expires%3DThu%2C%2017%20Feb%202022%2001%3A39%3A06%20GMT%3B%20Path%3D%2F%3B%3B__csrf%3D2a2995bda9778758da961cd1dd73d8b1%3B%20Max-Age%3D1296010%3B%20Expires%3DThu%2C%2017%20Feb%202022%2001%3A39%3A16%20GMT%3B%20Path%3D%2F%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fopenapi%2Fclientlog%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fapi%2Fclientlog%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Feapi%2Ffeedback%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fneapi%2Fclientlog%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fneapi%2Fclientlog%3B%3BNMTID%3D00OWXVRSiKaY6_CzES4okcUCy7KqtEAAAF-uBXXRA%3B%20Max-Age%3D315360000%3B%20Expires%3DSat%2C%2031%20Jan%202032%2001%3A39%3A06%20GMT%3B%20Path%3D%2F%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fwapi%2Ffeedback%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Feapi%2Ffeedback%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fweapi%2Fclientlog%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fweapi%2Fclientlog%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fopenapi%2Fclientlog%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Feapi%2Fclientlog%3B%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fwapi%2Ffeedback%3B%3BMUSIC_A_T%3D1545147973768%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fwapi%2Fclientlog%3B%3BMUSIC_SNS%3D%3B%20Max-Age%3D0%3B%20Expires%3DWed%2C%202%20Feb%202022%2001%3A39%3A06%20GMT%3B%20Path%3D%2F%3BMUSIC_R_T%3D1545148177837%3B%20Max-Age%3D2147483647%3B%20Expires%3DMon%2C%2020%20Feb%202090%2004%3A53%3A13%20GMT%3B%20Path%3D%2Fweapi%2Ffeedback%3B';

void main() async {
  final dio = Dio();
  final client = NestLoginClient(dio);
  const phone = 'xxxxxxx';

  group('登录', () {
    test('发送短信验证码', () async {
      await client.sentCaptcha(phone).then((value) async {
        logger.d('sentCaptcha $value');
      });
    });

    test('手机号登录(验证码登录)', () async {
      const captcha = '6727';
      await client.cellPhone(phone, '', captcha: captcha).then((value) async {
        logger.d('cellPhone $value');
      });
    });

    test('邮箱登录', () async {
      const email = 'q916378508@163.com';
      await client.email(email, '199641yueqi').then((value) async {
        logger.d('email $value');
      });
    });

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

    test('验证短信验证码', () async {
      const captcha = '7931';
      await client.verifyCaptcha(phone, captcha).then((value) {
        logger.d('sentVerify $value');
      });
    });
  });
}
