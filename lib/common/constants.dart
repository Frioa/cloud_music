import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  // https://flutter-cloud-music-api.vercel.app
  static const String nestBaseUrl = 'https://flutter-cloud-music-api.vercel.app';

  static bool get isRelease => kReleaseMode;
}

class L {
  static final EdgeInsets pagePadding = EdgeInsets.symmetric(horizontal: 12.w);

}
