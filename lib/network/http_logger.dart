import 'dart:convert';
import 'dart:io';

import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';

class HttpLoggerImp extends HttpLogger {
  @override
  void d(String message) {
    return logger.d(message);
  }

  @override
  void v(String message) {
    return logger.v(message);
  }

  @override
  void w(String message, {ex, StackTrace? stackTrace}) {
    return logger.w(message, ex, stackTrace);
  }
}

abstract class HttpLogger extends Interceptor {
  void d(String message);

  void w(String message, {dynamic ex, StackTrace? stackTrace});

  void v(String message);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final method = options.method.toUpperCase();
    final url = options.uri;
    final queryParams = options.queryParameters;
    final data = options.data;
    final cookie = options.headers[HttpHeaders.cookieHeader];

    if (queryParams.isNotEmpty) {
      d('$method url: $url\n=> $method queryParams: ${jsonEncode(queryParams)}');
    }
    if (data != null) {
      d('data: ${_dataForPrint(data)}');
    }
    if (cookie != null) v('cookie: $cookie');
    handler.next(options);
  }

  dynamic _dataForPrint(dynamic data) {
    if (data is FormData) return '${_fieldsForPrint(data.fields)}\n${_filesForPrint(data.files)}';
    if (data is Map) return jsonEncode(data);
    return data;
  }

  String _fieldsForPrint(List<MapEntry<String, String>> fields) {
    if (fields.isEmpty) return '';
    return fields.map((e) => '${e.key}: ${e.value}').reduce((a, b) => '$a\n$b');
  }

  String _filesForPrint(List<MapEntry<String, MultipartFile>> files) {
    if (files.isEmpty) return '';
    return files.map((e) => '${e.key}: ${e.value.length >> 10}KB').reduce((a, b) => '$a\n$b');
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final method = response.requestOptions.method.toUpperCase();
    d('$method url: ${response.requestOptions.uri}\n=> $method response: $response');

    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final method = err.requestOptions.method.toUpperCase();
    w('$method url: ${err.requestOptions.uri}\n=> $method error: ${err.response}');

    handler.next(err);
  }
}
