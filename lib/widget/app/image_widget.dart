import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatefulWidget {
  final String url;
  final BoxFit? fit;
  final bool fadeIn;
  final double? size;
  final double? width;
  final double? height;
  final int? cacheWidth;
  final int? cacheHeight;
  final Color? loadingColor;
  final Color? color;
  final String? semanticsValue;
  final bool isPreLoad;
  final bool enableDiskCache;
  final String? loadingUrl;
  final Curve? opacityCurve;
  final bool isSemanticsButton;
  final bool? isSemanticsEnabled;

  /// https://github.com/flutter/flutter/issues/51775
  final bool playGifFromStart;

  /// https://github.com/flutter/flutter/issues/24804
  final bool playGifSpeedily;
  final String? package;

  /// 是否是 dark mode
  ///
  /// Dark Mode 时会将传入的 [url] 做变化后再行加载，变换方式为：
  /// xxx.ext -> xxx_dark.ext
  final bool light;

  const ImageWidget(
    this.url, {
    Key? key,
    this.fit,
    this.fadeIn = false,
    this.size,
    this.width,
    this.height,
    this.cacheWidth,
    this.cacheHeight,
    this.loadingColor,
    this.color,
    this.semanticsValue,
    this.isPreLoad = false,
    this.enableDiskCache = true,
    this.loadingUrl,
    this.opacityCurve,
    this.isSemanticsButton = false,
    this.isSemanticsEnabled,
    this.playGifFromStart = false,
    this.playGifSpeedily = false,
    this.package,
    this.light = true,
  }) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> with SingleTickerProviderStateMixin {
  ImageProvider? _provider;
  late ImageConfiguration _configuration;

  bool get isSvgPicture => widget.url.endsWith('.svg');

  bool get isGif => widget.url.endsWith('.gif');

  bool get isNetworkImage => widget.url.startsWith('http');

  String get darkModeUrl {
    final segments = widget.url.split('.');
    final length = segments.length;
    return length < 2
        ? widget.url
        : (segments..[length - 2] = '${segments[length - 2]}_dark').join('.');
  }

  String get url => widget.light ? widget.url : darkModeUrl;

  ImageConfiguration get configuration {
    return createLocalImageConfiguration(
      context,
      size: width != null && height != null ? Size(width!, height!) : null,
    );
  }

  ImageProvider? get imageProvider {
    if (isSvgPicture) return null;
    if (isNetworkImage) {
      return ResizeImage.resizeIfNeeded(
        widget.cacheWidth,
        widget.cacheHeight,
        NetworkImage(url),
      );
    }
    return ResizeImage.resizeIfNeeded(
      widget.cacheWidth,
      widget.cacheHeight,
      isGif && widget.playGifSpeedily
          ? GifImage(url, package: widget.package)
          : AssetImage(url, package: widget.package),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.url.isEmpty) return;

    _configuration = configuration;
    _provider = imageProvider;

    if (widget.playGifFromStart) _provider?.evict(configuration: _configuration);

    if (widget.isPreLoad && !isSvgPicture) {
      precacheImage(_provider!, context, size: Size(width!, height!));
    }
  }

  @override
  void didUpdateWidget(covariant ImageWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.url.isEmpty) return;

    if (oldWidget.url != widget.url ||
        oldWidget.cacheWidth != widget.cacheWidth ||
        oldWidget.cacheHeight != widget.cacheHeight) _provider = imageProvider;

    final shouldUpdateImageConfiguration = oldWidget.size != widget.size ||
        oldWidget.width != widget.width ||
        oldWidget.height != widget.height;
    if (shouldUpdateImageConfiguration) _configuration = configuration;

    if (oldWidget.url == widget.url) {
      if (!oldWidget.playGifFromStart && widget.playGifFromStart) {
        _provider?.evict(configuration: _configuration);
      }
    } else {
      if (widget.playGifFromStart) _provider?.evict(configuration: _configuration);
    }
  }

  double? get width => widget.size ?? widget.width;

  double? get height => widget.size ?? widget.height;

  BoxFit get fit => widget.fit ?? BoxFit.contain;

  // frame 指定当前图像帧的索引，第一个图像帧准备就绪之前，它为null，然后为零。如果 GIF 图将大于0
  ImageFrameBuilder get frameBuilder =>
      (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded || !widget.fadeIn) {
          return child;
        }

        return Container(
          decoration: BoxDecoration(
            image: widget.loadingUrl != null
                ? DecorationImage(
                    image: AssetImage(widget.loadingUrl!),
                    fit: fit,
                    alignment: FractionalOffset.center,
                  )
                : null,
            color: widget.loadingColor,
          ),
          width: width,
          height: height,
          child: AnimatedOpacity(
            child: child,
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 1),
            curve: widget.opacityCurve ?? Curves.linear,
          ),
        );
      };

  Image _buildImage() {
    return Image(
      image: _provider!,
      color: widget.color,
      fit: fit,
      width: width,
      height: height,
      alignment: FractionalOffset.center,
      frameBuilder: frameBuilder,
    );
  }

  Widget _buildSvgPicture() {
    return SvgPicture.asset(
      url,
      color: widget.color,
      fit: fit,
      width: width,
      height: height,
      package: widget.package,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.url.isEmpty) return const SizedBox();

    return isSvgPicture ? _buildSvgPicture() : _buildImage();
  }
}

class GifImage extends AssetImage {
  const GifImage(
    String assetName, {
    AssetBundle? bundle,
    String? package,
  }) : super(assetName, bundle: bundle, package: package);

  @override
  ImageStreamCompleter load(AssetBundleImageKey key, DecoderCallback decode) {
    InformationCollector? collector;
    assert(() {
      collector = () sync* {
        yield DiagnosticsProperty<ImageProvider>('Image provider', this);
        yield DiagnosticsProperty<AssetBundleImageKey>('Image key', key);
      };
      return true;
    }());
    return GifImageStreamCompleter(
        codec: _loadAsync(key, decode),
        scale: key.scale,
        debugLabel: key.name,
        informationCollector: collector);
  }

  /// Fetches the image from the asset bundle, decodes it, and returns a
  /// corresponding [ImageInfo] object.
  ///
  /// This function is used by [load].
  @protected
  Future<Codec> _loadAsync(AssetBundleImageKey key, DecoderCallback decode) async {
    ByteData? data;
    try {
      data = await key.bundle.load(key.name);
      // ignore: avoid_catching_errors
    } on FlutterError {
      PaintingBinding.instance!.imageCache!.evict(key);
      rethrow;
    }

    /// `key.bundle.load` has a non-nullable return type, but might be null when
    /// running with weak checking, so we need to null check it anyway (and
    /// ignore the warning that the null-handling logic is dead code).
    /// ignore: unnecessary_null_comparison
    if (data == null) {
      PaintingBinding.instance!.imageCache!.evict(key);
      throw StateError('Unable to read data');
    }
    return await decode(data.buffer.asUint8List());
  }
}

/// Manages the decoding and scheduling of image frames.
///
/// New frames will only be emitted while there are registered listeners to the
/// stream (registered with [addListener]).
///
/// This class deals with 2 types of frames:
///
///  * image frames - image frames of an animated image.
///  * app frames - frames that the flutter engine is drawing to the screen to
///    show the app GUI.
///
/// For animated images, this class eagerly decodes the next image frame,
/// and notifies the listeners that a new frame is ready on the first app frame
/// that is scheduled after the image frame duration has passed.
///
/// Scheduling new timers only from scheduled app frames, makes sure we pause
/// the animation when the app is not visible (as new app frames will not be
/// scheduled).
///
/// See the following timeline example:
///
///     | Time | Event                                      | Comment                      |
///     |------|--------------------------------------------|------------------------------|
///     | t1   | App frame scheduled (image frame A posted) |                              |
///     | t2   | App frame scheduled                        |                              |
///     | t3   | App frame scheduled                        |                              |
///     | t4   | Image frame B decoded                      |                              |
///     | t5   | App frame scheduled                        | t5 - t1 < frameA_duration    |
///     | t6   | App frame scheduled (image frame B posted) | t6 - t1 > frameA_duration    |
///     | t7   | App frame scheduled                        |                              |
///     | t8   | Image frame C decoded                      |                              |
///     | t9   | App frame scheduled                        | t9 - (t1 + frameA_duration)  |
///     |      |                                            | < frameB_duration            |
///     | t10  | App frame scheduled (image frame C posted) | t10 - (t1 + frameA_duration) |
///     |      |                                            | > frameB_duration            |
///
class GifImageStreamCompleter extends ImageStreamCompleter {
  /// Creates a image stream completer.
  ///
  /// Immediately starts decoding the first image frame when the codec is ready.
  ///
  /// The `codec` parameter is a future for an initialized [ui.Codec] that will
  /// be used to decode the image.
  ///
  /// The `scale` parameter is the linear scale factor for drawing this frames
  /// of this image at their intended size.
  GifImageStreamCompleter({
    required Future<Codec> codec,
    required double scale,
    String? debugLabel,
    InformationCollector? informationCollector,
  })  : _informationCollector = informationCollector,
        _scale = scale {
    this.debugLabel = debugLabel;
    codec.then<void>(_handleCodecReady, onError: (Object error, StackTrace stack) {
      reportError(
        context: ErrorDescription('resolving an image codec'),
        exception: error,
        stack: stack,
        informationCollector: informationCollector,
        silent: true,
      );
    });
  }

  Codec? _codec;
  final double _scale;
  final InformationCollector? _informationCollector;
  FrameInfo? _nextFrame;

  /// When the current was first shown.
  late Duration _shownTimestamp;

  /// The requested duration for the current frame;
  Duration? _frameDuration;

  /// How many frames have been emitted so far.
  int _framesEmitted = 0;
  Timer? _timer;

  /// Used to guard against registering multiple _handleAppFrame callbacks for the same frame.
  bool _frameCallbackScheduled = false;

  void _handleCodecReady(Codec codec) {
    _codec = codec;
    assert(_codec != null);

    if (hasListeners) {
      _decodeNextFrameAndSchedule();
    }
  }

  void _handleAppFrame(Duration timestamp) {
    _frameCallbackScheduled = false;
    if (!hasListeners) return;
    assert(_nextFrame != null);
    if (_isFirstFrame() || _hasFrameDurationPassed(timestamp)) {
      _emitFrame(ImageInfo(
        image: _nextFrame!.image.clone(),
        scale: _scale,
        debugLabel: debugLabel,
      ));
      if (_isFirstFrame()) {
        _shownTimestamp = timestamp;
      } else {
        _shownTimestamp = _shownTimestamp + _frameDuration!;
      }
      _frameDuration = _nextFrame!.duration;
      _nextFrame!.image.dispose();
      _nextFrame = null;
      final int completedCycles = _framesEmitted ~/ _codec!.frameCount;
      if (_codec!.repetitionCount == -1 || completedCycles <= _codec!.repetitionCount) {
        _decodeNextFrameAndSchedule();
      }
      return;
    }
    final Duration delay = _frameDuration! - (timestamp - _shownTimestamp);
    _timer = Timer(delay * timeDilation, _scheduleAppFrame);
  }

  bool _isFirstFrame() {
    return _frameDuration == null;
  }

  bool _hasFrameDurationPassed(Duration timestamp) {
    return timestamp - _shownTimestamp >= _frameDuration!;
  }

  Future<void> _decodeNextFrameAndSchedule() async {
    /// This will be null if we gave it away. If not, it's still ours and it
    /// must be disposed of.
    _nextFrame?.image.dispose();
    _nextFrame = null;
    try {
      _nextFrame = await _codec!.getNextFrame();
    } catch (exception, stack) {
      reportError(
        context: ErrorDescription('resolving an image frame'),
        exception: exception,
        stack: stack,
        informationCollector: _informationCollector,
        silent: true,
      );
      return;
    }
    if (_codec!.frameCount == 1) {
      /// ImageStreamCompleter listeners removed while waiting for next frame to
      /// be decoded.
      /// There's no reason to emit the frame without active listeners.
      if (!hasListeners) {
        return;
      }
      // This is not an animated image, just return it and don't schedule more
      // frames.
      _emitFrame(ImageInfo(
        image: _nextFrame!.image.clone(),
        scale: _scale,
        debugLabel: debugLabel,
      ));
      _nextFrame!.image.dispose();
      _nextFrame = null;
      return;
    }
    _scheduleAppFrame();
  }

  void _scheduleAppFrame() {
    if (_frameCallbackScheduled) {
      return;
    }
    _frameCallbackScheduled = true;
    SchedulerBinding.instance!.scheduleFrameCallback(_handleAppFrame);
  }

  void _emitFrame(ImageInfo imageInfo) {
    setImage(imageInfo);
    _framesEmitted += 1;
  }

  @override
  void addListener(ImageStreamListener listener) {
    if (!hasListeners && _codec != null) _decodeNextFrameAndSchedule();
    super.addListener(listener);
  }

  @override
  void removeListener(ImageStreamListener listener) {
    super.removeListener(listener);
    if (!hasListeners) {
      _timer?.cancel();
      _timer = null;
    }
  }
}
