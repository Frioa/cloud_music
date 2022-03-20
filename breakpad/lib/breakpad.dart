import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class Breakpad {
  static const MethodChannel _channel = MethodChannel('breakpad');

  static Future<void> initBreakPad() async {
    if (Platform.isIOS) return;
    if (!kReleaseMode) return;

    await _channel.invokeMethod('initBreakPad');
  }

  static Future<void> crash() async {
    await _channel.invokeMethod('crash');
  }
}
