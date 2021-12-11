import 'dart:ffi'; // For FFI
import 'dart:io';

import 'package:flutter/material.dart';

part 'player_native.dart';

class Player {
  static final Player instance = Player();

  int nativeHandle = 0;

  static void onPrepare() {
    print('onPrepare');
  }

  static void onProgress(int value) {
    print('onProgress $value');
  }

  static void onError(int code) {
    print('onError $code');
  }

  void init({
    VoidCallback? prepare,
    ValueChanged<int>? progress,
    ValueChanged<int>? error,
  }) {
    nativeHandle = _nativeInit(
      Pointer.fromFunction<OnPrepare>(onPrepare),
      Pointer.fromFunction<OnProgress>(onProgress),
      Pointer.fromFunction<OnError>(onError),
    );
  }

  void setDataSource(String path) {
    _nativeSetDataSource(nativeHandle, nullptr);
  }

  void prepare() {}

  void start() {}

  void pause() {}

  void stop() {}
}
