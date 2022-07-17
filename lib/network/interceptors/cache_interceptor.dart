import 'package:dio/dio.dart';

class CacheInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    handler.next(response);
  }


  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    handler.next(err);
  }
}