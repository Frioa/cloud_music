import 'package:cloud_music/network/network.dart';
import 'package:cloud_music/utils/logger_extensions.dart';
import 'package:dio/dio.dart';

void main() async {
  final dio = Dio(); // Provide a dio instance

  final client = NestLoginClient(dio);

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
}
