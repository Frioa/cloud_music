class PlayerValue {
  /// The total duration of the video.
  ///
  /// The duration is [Duration.zero] if the video hasn't been initialized.
  final Duration duration;

  /// The current playback position.
  final Duration position;

  /// True if the video is playing. False if it's paused.
  final bool isPlaying;

  final bool complete;

  /// True if the video is currently buffering.
  final bool isBuffering;

  /// Indicates whether or not the video has been loaded and is ready to play.
  final bool isInitialized;

  final String url;

  final double aspect;

  final bool isVideo;

  PlayerValue({
    required this.duration,
    this.position = Duration.zero,
    this.isInitialized = false,
    this.isPlaying = false,
    this.isBuffering = false,
    this.volume = 1.0,
    this.playbackSpeed = 1.0,
    this.url = '',
    this.complete = false,
    this.aspect = 1.77,
    this.isVideo = false,
  });

  /// The current volume of the playback.
  final double volume;

  /// The current speed of the playback.
  final double playbackSpeed;

  /// Returns a new instance that has the same values as this current instance,
  /// except for any overrides passed in as arguments to [copyWidth].
  PlayerValue copyWith({
    Duration? duration,
    Duration? position,
    bool? isInitialized,
    bool? isPlaying,
    bool? isBuffering,
    bool? complete,
    double? volume,
    double? playbackSpeed,
    String? url,
    double? aspect,
    bool? isVideo,
  }) {
    return PlayerValue(
      complete: complete ?? this.complete,
      duration: duration ?? this.duration,
      position: position ?? this.position,
      isInitialized: isInitialized ?? this.isInitialized,
      isPlaying: isPlaying ?? this.isPlaying,
      isBuffering: isBuffering ?? this.isBuffering,
      volume: volume ?? this.volume,
      playbackSpeed: playbackSpeed ?? this.playbackSpeed,
      url: url ?? this.url,
      aspect: aspect ?? this.aspect,
      isVideo: isVideo ?? this.isVideo,
    );
  }
}
