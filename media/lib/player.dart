import 'dart:ffi'; // For FFI
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'player_native.dart';

class Player {
  int? textureId;
  VoidCallback? _prepare;
  ValueChanged<int>? _progress;
  ValueChanged<int>? _error;

  static final Player instance = Player();

  int nativeHandle = 0;

  static void _onPrepare() {
    instance._prepare?.call();
  }

  static void _onProgress(int value) {
    instance._progress?.call(value);
  }

  static void _onError(int code) {
    instance._error?.call(code);
  }

  Future<void> init({
    VoidCallback? onPrepare,
    ValueChanged<int>? onProgress,
    ValueChanged<int>? onError,
  }) async {
    _prepare = onPrepare;
    _progress = onProgress;
    _error = onError;

    // https://github.com/dart-lang/sdk/issues/37022
    // 不支持异步回调
    nativeHandle = _nativeInit(
      Pointer.fromFunction<OnPrepare>(_onPrepare),
      Pointer.fromFunction<OnProgress>(_onProgress),
      Pointer.fromFunction<OnError>(_onError),
    );

    methodChannel.setMethodCallHandler(null);
    methodChannel.setMethodCallHandler((call) async {
      final method = call.method;

      switch(method) {
        case "onPrepare":
          return _onPrepare();
        case "onProgress":
          final arg = call.arguments as Map;
          return _onProgress(arg['value']);
        case "onError":
          final arg = call.arguments as Map;
          return _onError(arg['code']);
      }
      return;
    });

    textureId = await methodChannel
        .invokeMethod('surfaceTextureId', {'nativeHandle': nativeHandle});
  }

  void setDataSource(String path) {
    _nativeSetDataSource(nativeHandle, nullptr);
  }

  void prepare() {
    _nativePrepare(nativeHandle);
  }

  void start() {
    _nativeStart(nativeHandle);
  }

  void pause() {}

  void stop() {}
}
