import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

import 'http_logger.dart';

Dio _dio = Dio();

Dio get dio => _dio;

CacheOptions _buildOptions(String hiveDir) {
  return CacheOptions(
    // A default store is required for interceptor.
    store: BackupCacheStore(primary: MemCacheStore(), secondary: HiveCacheStore(hiveDir)),

    // All subsequent fields are optional.

    // Default.
    policy: CachePolicy.request,
    // Returns a cached response on error but for statuses 401 & 403.
    // Also allows to return a cached response on network errors (e.g. offline usage).
    // Defaults to [null].
    hitCacheOnErrorExcept: [401, 403],
    // Overrides any HTTP directive to delete entry past this duration.
    // Useful only when origin server has no cache config or custom behaviour is desired.
    // Defaults to [null].
    maxStale: const Duration(days: 7),
    // Default. Allows 3 cache sets and ease cleanup.
    priority: CachePriority.normal,
    // Default. Body and headers encryption with your own algorithm.
    cipher: null,
    // Default. Key builder to retrieve requests.
    keyBuilder: CacheOptions.defaultCacheKeyBuilder,
    // Default. Allows to cache POST requests.
    // Overriding [keyBuilder] is strongly recommended when [true].
    allowPostMethod: false,
  );
}

Future<void> initDio() async {
  await getApplicationDocumentsDirectory().then((dir) async {
    logger.d('init dio. dir=$dir');
    _dio = Dio()
      ..interceptors.addAll([
        HttpLoggerImp(),
        DioCacheInterceptor(options: _buildOptions('${dir.path}/hive')),
        CookieManager(PersistCookieJar(
          ignoreExpires: true,
          storage: FileStorage('${dir.path}/cookies'),
        )),
      ]);
  });
}
