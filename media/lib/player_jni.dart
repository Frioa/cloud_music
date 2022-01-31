import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/utils/logger_extensions.dart';

const MethodChannel _methodChannel = MethodChannel('media');

class PlayerJni {
  static late final PlayerJni _instance = PlayerJni();

  static PlayerJni get instance => _instance;

  late int nativeHandler;
  VoidCallback? prepare;
  ValueChanged<int>? progress;
  ValueChanged<int>? error;

  PlayerJni() {
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
  }

  Future<void> setDataSource(String path) async {
    logger.d("setDataSource");
    await _methodChannel.invokeMethod('setDataSource', {"path": path});
  }


  Future<void> init() async {
    logger.d("init");
    await _methodChannel.invokeMethod('init');
  }


  Future<void> start() async {
    logger.d("start");
    await _methodChannel.invokeMethod('start');
  }

  Future<void> stop() async {
    logger.d("stop");
    await _methodChannel.invokeMethod('stop');
  }

  Future<void> dispose() async {
    _methodChannel.setMethodCallHandler(null);
  }
}
