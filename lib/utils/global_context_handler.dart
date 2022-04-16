import 'dart:async';

import 'package:cloud_music/bloc/player/player.dart';
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
      if (event is SongDetailGlobalEvent) {
        context.read<PlayerBloc>().add(PlayerEvent.songDetail(event.songDetail));
      }
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

class SongDetailGlobalEvent extends BaseGlobalContextEvent {
  final SongDetail songDetail;

  SongDetailGlobalEvent(this.songDetail);

  @override
  String toString() {
    return 'SongDetailGlobalEvent{songDetail: $songDetail}';
  }
}
