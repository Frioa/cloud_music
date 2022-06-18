import 'package:flutter/foundation.dart';

class Constants {
  // https://netease-cloud-music-api-mu-opal.vercel.app/
  static const String nestBaseUrl = 'https://netease-cloud-music-api-mu-opal.vercel.app';

  static bool get isRelease => kReleaseMode;
}
