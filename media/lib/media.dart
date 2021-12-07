import 'dart:async';
import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

import 'package:flutter/services.dart';

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libmedia.so")
    : DynamicLibrary.process();

class Media {
  static final int Function(int x, int y) nativeAdd = nativeAddLib
      .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
      .asFunction();

  static int ab(int a, int b) {

    return nativeAdd(a, b);
  }
}
