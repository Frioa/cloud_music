/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const String icArrowDown = 'assets/ic_arrow_down.svg';
  static const AssetGenImage icBtnPause =
      AssetGenImage('assets/ic_btn_pause.png');
  static const AssetGenImage icBtnPlay =
      AssetGenImage('assets/ic_btn_play.png');
  static const String icClose = 'assets/ic_close.svg';
  static const AssetGenImage icDefaultAvatar =
      AssetGenImage('assets/ic_default_avatar.jpg');
  static const AssetGenImage icDefaultSongSheet =
      AssetGenImage('assets/ic_default_song_sheet.png');
  static const String icLoginModifyPhone = 'assets/ic_login_modify_phone.svg';
  static const String icMvCollection = 'assets/ic_mv_collection.svg';
  static const String icMvComment = 'assets/ic_mv_comment.svg';
  static const AssetGenImage icMvForwarding =
      AssetGenImage('assets/ic_mv_forwarding.png');
  static const String icMvNote = 'assets/ic_mv_note.svg';
  static const String icMvPraise = 'assets/ic_mv_praise.svg';
  static const AssetGenImage icPotinRight =
      AssetGenImage('assets/ic_potin_right.jpg');
  static const String icSearchLight = 'assets/ic_search_light.svg';
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
