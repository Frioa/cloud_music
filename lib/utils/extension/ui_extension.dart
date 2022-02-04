import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

extension UiExtensons on State {
  /// 安全更新: https://book.flutterchina.club/chapter14/flutter_app_startup.html#_14-3-2-%E6%B8%B2%E6%9F%93%E7%AE%A1%E7%BA%BF
  void addPostFrame(VoidCallback fn) {
    final schedulerPhase = SchedulerBinding.instance!.schedulerPhase;
    if (schedulerPhase == SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance!.addPostFrameCallback((_) {
        setState(fn);
      });
    } else {
      setState(fn);
    }
  }
}
