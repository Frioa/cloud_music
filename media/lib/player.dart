import 'dart:ffi'; // For FFI
import 'dart:io';

import 'package:flutter/material.dart';

part 'player_native.dart';

class Player {
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

  void init({
    VoidCallback? onPrepare,
    ValueChanged<int>? onProgress,
    ValueChanged<int>? onError,
  }) {
    _prepare = onPrepare;
    _progress = onProgress;
    _error = onError;

    nativeHandle = _nativeInit(
      Pointer.fromFunction<OnPrepare>(_onPrepare),
      Pointer.fromFunction<OnProgress>(_onProgress),
      Pointer.fromFunction<OnError>(_onError),
    );
  }

  void setDataSource(String path) {
    _nativeSetDataSource(nativeHandle, nullptr);
  }

  void prepare() {}

  void start() {
    _nativeStart(nativeHandle);
  }

  void pause() {}

  void stop() {}
}
