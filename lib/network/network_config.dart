import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

import 'http_logger.dart';

late Dio _dio = Dio();

Dio get dio => _dio;

Future<void> initDio() async {
  await getApplicationDocumentsDirectory().then((dir) async {
    logger.d('init dio. dir=$dir');
    _dio = Dio()
      ..interceptors.addAll([
        HttpLoggerImp(),
        CookieManager(PersistCookieJar(
          ignoreExpires: true,
          storage: FileStorage('${dir.path}/cookies'),
        )),
      ]);

  });
}
