import 'package:cloud_music/bloc/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ThemeExtension on ThemeData {
  bool get isLight => brightness == Brightness.light;

  Color get primaryTextColor {
    return isLight ? const Color(0xff333333) : const Color(0xffadaeb3);
  }

  Color get descTextColor {
    return isLight ? const Color(0xff828282) : const Color(0xff828282);
  }

  Color get hintTextColor {
    return isLight ? Colors.black.withOpacity(0.4) : Colors.white.withOpacity(0.4);
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

  TextStyle get tsTitleBold {
    return TextStyle(color: primaryTextColor, fontSize: 23.sp, fontWeight: FontWeight.w800);
  }

  TextStyle get tsTitleBold2 {
    return tsTitleBold.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700);
  }

  TextStyle get tsDesc {
    return TextStyle(color: primaryTextColor, fontSize: 13.sp);
  }

  TextStyle get tsDesc2 {
    return TextStyle(color: descTextColor, fontSize: 13.sp);
  }

  TextStyle get tsDescBold {
    return tsDesc2.copyWith(color: primaryTextColor, fontWeight: FontWeight.w600);
  }

  TextStyle get tsDesc2Bold {
    return tsDesc2.copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get hint2 {
    return TextStyle(color: hintTextColor, fontSize: 11.sp);
  }

  Radius get radius10 => Radius.circular(10.w);

  Radius get radius20 => Radius.circular(20.w);

  Radius get radius40 => Radius.circular(40.w);

}
