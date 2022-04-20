import 'dart:async';

import 'package:cloud_music/common/common.dart';
import 'package:flutter/material.dart';

class GlobalContextHandler {
  factory GlobalContextHandler() => _instance;

  static final GlobalContextHandler _instance = GlobalContextHandler._internal();

  final StreamController<BaseGlobalContextEvent> _eventStreamController =
      StreamController.broadcast();

  GlobalContextHandler._internal();

  void postEvent(BaseGlobalContextEvent event) {
    _eventStreamController.add(event);
  }

  StreamSubscription<BaseGlobalContextEvent> handleEvent(BuildContext context) {
    final listen = _eventStreamController.stream.listen((BaseGlobalContextEvent event) async {
      logger.d("GlobalContextHandler: ${event.toString()}");
    });
    return listen;
  }
}

abstract class BaseGlobalContextEvent {
  @override
  String toString() {
    return 'BaseGlobalContextEvent{}';
  }
}
