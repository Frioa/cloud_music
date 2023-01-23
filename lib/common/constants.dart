import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class Constants {
  // https://netease-cloud-music-api-mu-opal.vercel.app/
  static const String nestBaseUrl = 'https://neteasecloudmusicapi.yueqiqi.top/';

  static bool get isRelease => kReleaseMode;

  static const int phoneMaxLength = 11;

  static const int captchaLength = 4;

  static final digitInputFormatter = FilteringTextInputFormatter.allow(RegExp("[0-9.]"));

  /// Reg
  static final phoneReg =
      RegExp(r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
}
