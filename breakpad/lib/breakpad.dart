
import 'package:flutter/services.dart';

class Breakpad {
  static const MethodChannel _channel = MethodChannel('breakpad');

  static Future<void> initBreakPad() async {
    await _channel.invokeMethod('initBreakPad');
  }

  static Future<void> crash() async {
    await _channel.invokeMethod('crash');
  }
}
