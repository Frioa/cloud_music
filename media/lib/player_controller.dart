import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media/model/player_value.dart';
import 'package:media/utils/extensions.dart';
import 'package:media/utils/logger.dart';
import 'package:media/widget/lifecyc_mixin.dart';

late final PlayerController _instance = PlayerController._();

const MethodChannel _methodChannel = MethodChannel('media');
String _tag = 'PlayerController';

class PlayerController extends ValueNotifier<PlayerValue> {
  static PlayerController get instance => _instance;
  static bool lock = false;

  final _lifecycListeners = <PlayerLifecycMixin>[];

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
          // ignore: avoid_function_literals_in_foreach_calls
          _lifecycListeners.forEach((e) => e.onPrepare());
          return;
        case "onProgress":
          logger.d("onPrepare value ${arg['value']}");
          // ignore: avoid_function_literals_in_foreach_calls
          _lifecycListeners.forEach((e) => e.onProgress());
          return;
        case "onAudioProgress":
          logger.d("onAudioProgress value: ${arg['value']}");
          final d = ((arg['value'] as double) * 1000).toInt().toSecDuration;
          value = value.copyWith(position: d);
          // ignore: avoid_function_literals_in_foreach_calls
          _lifecycListeners.forEach((e) => e.onProgress());
          return;
        case "onError":
          logger.d("onPrepare code: ${arg['code']}");
          // ignore: avoid_function_literals_in_foreach_calls
          _lifecycListeners.forEach((e) => e.onError());
          return;
        case "onComplete":
          logger.d("onComplete code");
          value = value.copyWith(
            isPlaying: false,
            complete: true,
            duration: Duration.zero,
            position: Duration.zero,
          );
          // ignore: avoid_function_literals_in_foreach_calls
          _lifecycListeners.forEach((e) => e.onComplete());
          return;
      }
      return;
    });
  }

  Future<void> play(String url, {Duration start = Duration.zero}) async {
    if (!_checkLock()) return;

    await _play(url, start: start);
    _releaseLock();
  }

  Future<void> pauseOrPlay() async {
    if (!_checkLock()) return;

    if (value.isPlaying) {
      await _stop();
    } else {
      await _play(value.url, start: value.position);
    }
    value = value.copyWith(isPlaying: !value.isPlaying);
    _releaseLock();
  }

  Future<void> pause() async {
    if (!_checkLock()) return;

    if (value.isPlaying) {
      await _stop();
      value = value.copyWith(isPlaying: !value.isPlaying);
    }
    _releaseLock();
  }

  Future<void> continueplay() async {
    if (!_checkLock()) return;

    if (!value.isPlaying) {
      await _play(value.url, start: value.position);
    }
    _releaseLock();
  }

  /// @time: 时间，单位"秒"
  Future<void> seek() async {
    if (!_checkLock()) return;

    await _seek(value.position.inMilliseconds / 1000);
    _releaseLock();
  }

  Future<void> stop() async {
    if (!_checkLock()) return;

    if (value.isPlaying) {
      await _stop();
      value = value.copyWith(
        isPlaying: !value.isPlaying,
        isInitialized: false,
        duration: Duration.zero,
      );
    }
    _releaseLock();
  }

  Future<void> _init() async {
    logger.d("$_tag init");
    await _methodChannel.invokeMethod('init');
  }

  Future<void> _play(String url, {Duration start = Duration.zero}) async {
    value = value.copyWith(
      isPlaying: false,
      position: start,
      url: url,
      complete: false,
      isInitialized: false,
    );
    await _setDataSource(url);
  }

  Future<void> _setDataSource(String path) async {
    logger.d("$_tag setDataSource");
    await _init();
    await _methodChannel.invokeMethod('setDataSource', {"path": path});
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

  void addLifecyclelistener(PlayerLifecycMixin lifecycleChanged) {
    _lifecycListeners.add(lifecycleChanged);
  }

  void removeLifecyclelistener(PlayerLifecycMixin lifecycleChanged) {
    _lifecycListeners.remove(lifecycleChanged);
  }

  bool _checkLock() {
    if (lock) {
      logger.d("lock...");
      return false;
    }

    lock = true;
    return true;
  }

  void _releaseLock() {
    lock = false;
  }
}
