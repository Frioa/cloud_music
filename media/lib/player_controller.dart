import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/model/player_value.dart';
import 'package:media/utils/extensions.dart';
import 'package:media/utils/logger.dart';

late final PlayerController _instance = PlayerController._();

const MethodChannel _methodChannel = MethodChannel('media');
String _tag = 'PlayerController';

class PlayerController extends ValueNotifier<PlayerValue> {
  static PlayerController get instance => _instance;

  double get progress {
    if (value.duration.inMilliseconds == 0) return 0.0;

    return value.position.inMilliseconds / value.duration.inMilliseconds;
  }

  PlayerController._() : super(PlayerValue(duration: Duration.zero)) {
    _methodChannel.setMethodCallHandler((call) async {
      final method = call.method;
      final arg = call.arguments as Map;

      switch (method) {
        case "onPrepare":
          logger.d("onPrepare arg = $arg");
          final duration = ((arg['duration'] as double) * 1000).toInt().toSecDuration;
          final aspect = (arg['aspect'] as double?) ?? 0.0;
          final isVideo = (arg['isVideo'] as bool?) ?? false;

          await _start();
          await seek();
          value = value.copyWith(
            duration: duration,
            isPlaying: true,
            isInitialized: true,
            aspect: aspect,
            isVideo: isVideo,
          );
          return;
        case "onProgress":
          logger.d("onPrepare value ${arg['value']}");
          return;
        case "onAudioProgress":
          logger.d("onAudioProgress value: ${arg['value']}");
          final d = ((arg['value'] as double) * 1000).toInt().toSecDuration;
          value = value.copyWith(position: d);
          return;
        case "onError":
          logger.d("onPrepare code: ${arg['code']}");
          return;
        case "onComplete":
          logger.d("onComplete code");
          value = value.copyWith(
            isPlaying: false,
            complete: true,
            duration: Duration.zero,
            position: Duration.zero,
          );
          return;
      }
      return;
    });
  }

  Future<void> play(String url, {Duration start = Duration.zero}) async {
    value = value.copyWith(
      isPlaying: false,
      position: start,
      url: url,
      complete: false,
      isInitialized: false,
    );
    await _setDataSource(url);
  }

  Future<void> pauseOrPlay() async {
    if (value.isInitialized == false) {
      logger.d("AudioPlayerController not isInitialized");
      return;
    }
    if (value.isPlaying) {
      await _stop();
    } else {
      await play(value.url, start: value.position);
    }
    value = value.copyWith(isPlaying: !value.isPlaying);
  }

  Future<void> _init() async {
    logger.d("$_tag init");
    await _methodChannel.invokeMethod('init');
  }

  Future<void> _setDataSource(String path) async {
    logger.d("$_tag setDataSource");
    await _init();
    await _methodChannel.invokeMethod('setDataSource', {"path": path});
  }

  /// @time: 时间，单位"秒"
  Future<void> seek() async {
    await _seek(value.position.inMilliseconds / 1000);
  }

  /// @time: 时间，单位"秒"
  Future<void> _seek(double time) async {
    logger.d("seek time=$time");
    await _methodChannel.invokeMethod('seek', {"time": time});
  }

  Future<void> _start() async {
    logger.d("start");
    await _methodChannel.invokeMethod('start');
  }

  Future<void> _stop() async {
    logger.d("stop");
    await _methodChannel.invokeMethod('stop');
  }
}
