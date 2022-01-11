import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/utils/logger_extensions.dart';

const MethodChannel _methodChannel = MethodChannel('media');

class PlayerJni {
  late int nativeHandler;
  final VoidCallback? prepare;
  final ValueChanged<int>? progress;
  final ValueChanged<int>? error;

  PlayerJni({
    this.prepare,
    this.progress,
    this.error,
  });

  Future<void> init() async {
    nativeHandler = await _methodChannel.invokeMethod('init');
    _methodChannel.setMethodCallHandler((call) async {
      final method = call.method;

      switch (method) {
        case "onPrepare":
          logger.d("onPrepare");
          return prepare?.call();
        case "onProgress":
          final arg = call.arguments as Map;
          logger.d("onPrepare onProgress ${arg['value']}");
          return progress?.call(arg['value']);
        case "onError":
          final arg = call.arguments as Map;
          logger.d("onPrepare onError ${arg['code']}");
          return error?.call(arg['code']);
      }
      return;
    });
    logger.d("nativeHandler $nativeHandler");
  }

  Future<void> setDataSource(String path) async {
    logger.d("");
    await _methodChannel.invokeMethod('setDataSource', {"path": path});
  }

  Future<void> start() async {
    logger.d("");
    await _methodChannel.invokeMethod('start');
  }

  Future<void> dispose() async {
    _methodChannel.setMethodCallHandler(null);
  }
}
