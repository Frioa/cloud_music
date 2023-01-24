import 'package:flutter/services.dart';
import 'package:media/utils/logger.dart';

const MethodChannel _methodChannel = MethodChannel('media');

///
/// TODO: 播放大视频OOM问题
///
class PlayerJni {
  static late final PlayerJni _instance = PlayerJni._();

  static PlayerJni get instance => _instance;

  late int nativeHandler;
  VoidCallback? prepare;
  ValueChanged<int>? progress;
  ValueChanged<int>? error;

  PlayerJni._() {
    _methodChannel.setMethodCallHandler((call) async {
      final method = call.method;
      final arg = call.arguments as Map;

      switch (method) {
        case "onPrepare":
          logger.d("onPrepare duration = ${arg['duration']}");
          return prepare?.call();
        case "onProgress":
          logger.d("onPrepare onProgress ${arg['value']}");
          return progress?.call(arg['value']);
        case "onError":
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

  /// @time: 时间，单位"秒"
  Future<void> seek(double time) async {
    logger.d("seek time=$time");
    await _methodChannel.invokeMethod('seek', {"time": time});
  }

  Future<void> dispose() async {
    _methodChannel.setMethodCallHandler(null);
  }
}
