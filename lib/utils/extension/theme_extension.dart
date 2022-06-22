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

  TextStyle get tsAppBar {
    return TextStyle(
      color: isLight ? const Color(0xff333333) : const Color(0xffE5E5E5),
      fontSize: 25.sp,
    );
  }

  TextStyle get tsNavigator {
    return TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 17.2.sp);
  }

  // TextStyle get tsTitle {
  //   return TextStyle(color: black1, fontSize: 15.sp);
  // }

  // TextStyle get tsTitleBold {
  //   return TextStyle(color: primaryTextColor, fontSize: 23.sp, fontWeight: FontWeight.w800);
  // }
  //
  TextStyle get tsTitleBold2 {
    return tsTitleBold.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700);
  }

  // TextStyle get tsDesc {
  //   return TextStyle(color: primaryTextColor, fontSize: 13.sp);
  // }

  // TextStyle get tsDesc2 {
  //   return TextStyle(color: descTextColor, fontSize: 13.sp);
  // }

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

extension ThemeExtensionPlus on ThemeData {
  double get a1 => 0.96;

  double get a60 => 0.6;

  double get a2 => 0.48;

  double get a3 => 0.15;

  Color get white => Colors.white.withOpacity(a1);

  Color get white2 => Colors.white.withOpacity(a2);

  Color get white3 => Colors.white.withOpacity(a3);

  Color get black => Colors.black.withOpacity(a1);

  Color get black2 => Colors.black.withOpacity(a2);

  Color get black3 => Colors.black.withOpacity(a3);

  Color get blackAuto => isLight ? black : white;

  Color get blackAuto2 => isLight ? black2 : white2;

  Color get blackAuto3 => isLight ? black3 : white3;

  TextStyle get tsHeader => TextStyle(
        color: black,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      );

  TextStyle get tsHeaderDark => tsHeader.copyWith(color: white);

  TextStyle get tsTitleDefaultFont => TextStyle(color: black, fontSize: 16.sp);

  TextStyle get tsTitle => tsTitleDefaultFont;

  TextStyle get tsTitleDark => tsTitle.copyWith(color: white);

  TextStyle get tsTitleAuto => isLight ? tsTitle : tsTitleDark;

  TextStyle get tsTitle2 => tsTitle.copyWith(color: black2);

  TextStyle get tsTitleDark2 => tsTitle.copyWith(color: white2);

  TextStyle get tsTitleAuto2 => isLight ? tsTitle2 : tsTitleDark2;

  TextStyle get tsTitle3 => tsTitle.copyWith(color: black3);

  TextStyle get tsTitleDark3 => tsTitle.copyWith(color: white3);

  TextStyle get tsTitleAuto3 => isLight ? tsTitle3 : tsTitleDark3;

  TextStyle get tsTitleBold => tsTitle.copyWith(fontWeight: FontWeight.bold);

  TextStyle get tsTitleBoldDark => tsTitleBold.copyWith(color: white);

  TextStyle get tsTitleBoldAuto => isLight ? tsTitleBold : tsTitleBoldDark;

  TextStyle get tsTitleMedium => tsTitle.copyWith(fontWeight: FontWeight.w500);

  TextStyle get tsTitleMediumDark => tsTitleMedium.copyWith(color: white);

  TextStyle get tsTitleMediumAuto => isLight ? tsTitleMedium : tsTitleMediumDark;

  /// Subtitle
  TextStyle get tsSubtitle => TextStyle(color: black, fontSize: 14.sp);

  TextStyle get tsSubtitleDark => tsSubtitle.copyWith(color: white);

  TextStyle get tsSubtitleAuto => isLight ? tsSubtitle : tsSubtitleDark;

  TextStyle get tsSubtitle2 => tsSubtitle.copyWith(color: black2);

  TextStyle get tsSubtitleLight2 => tsSubtitle2.copyWith(fontWeight: FontWeight.w300);

  TextStyle get tsSubtitleDark2 => tsSubtitle.copyWith(color: white2);

  TextStyle get tsSubtitleAuto2 => isLight ? tsSubtitle2 : tsSubtitleDark2;

  TextStyle get tsSubtitleAuto3 => isLight ? tsSubtitle3 : tsSubtitleDark3;

  TextStyle get tsSubtitle3 => tsSubtitle.copyWith(color: black3);

  TextStyle get tsSubtitleDark3 => tsSubtitle.copyWith(color: white3);

  TextStyle get tsSubtitleThin => tsSubtitle.copyWith(fontWeight: FontWeight.w300);

  TextStyle get tsSubtitleMedium => tsSubtitle.copyWith(fontWeight: FontWeight.w500);

  TextStyle get tsSubtitleBold => tsSubtitle.copyWith(fontWeight: FontWeight.bold);

  TextStyle get tsSubtitleThinAuto => tsSubtitleAuto.copyWith(fontWeight: FontWeight.w300);

  TextStyle get tsSubtitleMediumAuto => tsSubtitleAuto.copyWith(fontWeight: FontWeight.w500);

  TextStyle get tsSubtitleBoldAuto => tsSubtitleAuto.copyWith(fontWeight: FontWeight.bold);

  TextStyle get tsDesc => TextStyle(color: black, fontSize: 12.sp);

  TextStyle get tsDescDark => tsDesc.copyWith(color: white);

  TextStyle get tsDescAuto => isLight ? tsDesc : tsDescDark;

  TextStyle get tsDesc2 => tsDesc.copyWith(color: black2);

  TextStyle get tsDescDark2 => tsDesc.copyWith(color: white2);

  TextStyle get tsDescAuto2 => isLight ? tsDesc2 : tsDescDark2;

  TextStyle get tsDesc3 => tsDesc.copyWith(color: black3);

  TextStyle get tsDescDark3 => tsDesc.copyWith(color: white3);

  TextStyle get tsDescAuto3 => isLight ? tsDesc3 : tsDescDark3;

  TextStyle get tsDescMedium => tsDesc.copyWith(fontWeight: FontWeight.w500);

  TextStyle get tsDescMedium2 => tsDescMedium.copyWith(color: black2);

  TextStyle get tsDescMediumDart2 => tsDescMedium.copyWith(color: white2);

  TextStyle get tsDescMediumAuto2 => isLight ? tsDescMedium2 : tsDescMediumDart2;

  TextStyle get tsDescMedium3 => tsDescMedium.copyWith(color: black3);

  TextStyle get tsDescMediumDart3 => tsDescMedium.copyWith(color: white3);

  TextStyle get tsDescMediumAuto3 => isLight ? tsDescMedium3 : tsDescMediumDart3;

  TextStyle get tsPrompt => TextStyle(
        color: black,
        fontSize: 11.sp,
      );

  TextStyle get tsPromptDark => tsPrompt.copyWith(color: white);

  TextStyle get tsPromptAuto => isLight ? tsPrompt : tsPromptDark;

  TextStyle get tsPrompt2 => tsPrompt.copyWith(color: black2);

  TextStyle get tsPromptDark2 => tsPrompt2.copyWith(color: white2);

  TextStyle get tsPromptAuto2 => isLight ? tsPrompt2 : tsPromptDark2;

  TextStyle get tsPrompt3 => tsPrompt.copyWith(color: black3);

  TextStyle get tsPromptDark3 => tsPrompt3.copyWith(color: white3);

  TextStyle get tsPromptAuto3 => isLight ? tsPrompt3 : tsPromptDark3;

  double get pagePadding => 16.w;
}
