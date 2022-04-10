import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/model/player_value.dart';
import 'package:media/utils/extensions.dart';
import 'package:media/utils/logger.dart';

late final AudioPlayerController _instance = AudioPlayerController._();

const MethodChannel _methodChannel = MethodChannel('media');

class AudioPlayerController extends ValueNotifier<PlayerValue> {
  static String tag = 'PlayerController';

  static AudioPlayerController get instance => _instance;

  String url = '';

  double get progress {
    if (value.duration.inMilliseconds == 0) return 0.0;

    return value.position.inMilliseconds / value.duration.inMilliseconds;
  }

  AudioPlayerController._() : super(PlayerValue(duration: Duration.zero)) {
    _methodChannel.setMethodCallHandler((call) async {
      final method = call.method;
      final arg = call.arguments as Map;

      switch (method) {
        case "onPrepare":
          logger.d("onPrepare duration = ${arg['duration']}");
          final d = ((arg['duration'] as double) * 1000).toInt().toSecDuration;
          await _start();
          await seek();
          value = value.copyWith(duration: d, isPlaying: true, isInitialized: true);
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
          value = value.copyWith(isPlaying: false, duration: Duration.zero);
          return;
      }
      return;
    });
  }

  Future<void> play(String url, {Duration start = Duration.zero}) async {
    value = value.copyWith(isPlaying: false, position: start, url: url);
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
    logger.d("$tag init");
    await _methodChannel.invokeMethod('init');
  }

  Future<void> _setDataSource(String path) async {
    logger.d("$tag setDataSource");
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
