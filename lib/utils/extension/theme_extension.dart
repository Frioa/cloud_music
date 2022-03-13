import 'package:cloud_music/bloc/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ThemeExtension on ThemeData {
  bool get isLight => brightness == Brightness.light;

  Color get primaryTextColor {
    return isLight ? const Color(0xff333333) : const Color(0xffadaeb3);
  }

  Color get primaryLinkColor {
    return isLight ? const Color(0xff477aac) : const Color(0xff2b6e90);
  }

  /// 普通锻炼信息文字、用户名、icon 等
  Color get black1 {
    return isLight ? const Color(0xff666666) : const Color(0xff75777e);
  }

  /// 用于辅助次要的文字信息
  Color get black2 {
    return isLight ? const Color(0xff888888) : const Color(0xff6b6c74);
  }

  /// 用于辅助、次要的文字信息
  Color get black3 {
    return isLight ? const Color(0xff999999) : const Color(0xff5b5d63);
  }

  /// 用于辅助、次要的文字信息、icon
  Color get black4 {
    return isLight ? const Color(0xffb2b2b2) : const Color(0xff3e3f43);
  }

  /// 用于辅助、次要的文字信息、icon
  Color get invalidBlack {
    return isLight
        ? ThemeCubit.lightTheme.unselectedWidgetColor
        : ThemeCubit.darkTheme.unselectedWidgetColor;
  }

  /// 用于辅助、次要的文字信息、icon
  Color get dividerColor2 {
    return isLight ? Colors.black.withOpacity(0.05) : Colors.white.withOpacity(0.03);
  }

  TextStyle get tsNavigator {
    return TextStyle(color: black1, fontSize: 17.2.sp);
  }

  TextStyle get tsTitle {
    return TextStyle(color: black1, fontSize: 15.sp);
  }

  TextStyle get tsDesc {
    return TextStyle(color: black1, fontSize: 12.sp);
  }
}
