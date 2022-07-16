// import 'package:cloud_music/common/common.dart';
// import 'package:cloud_music/widget/app/app.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class HomeAppBar extends AppBar {
//   const HomeAppBar({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: ImageWidget(
//         Assets.icDefaultAvatar.path,
//         width: 49.w,
//         height: 49.w,
//       ),
//     );
//   }
// }

import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/image_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget {
  static build({
    String? leftImageUrl,
    String? rightImageUrl,
    Widget? title,
    double? imageSize,
    GestureTapCallback? onLeadingTap,
    GestureTapCallback? onRightTap,
  }) {
    final $imageSize = imageSize ?? 43.w;
    final padding = 0.w;

    return AppBar(
      leadingWidth: 69.w,
      title: SizedBox(height: 63.w, child: Center(child: title)),
      leading: leftImageUrl != null
          ? InkWell(
              onTap: onLeadingTap,
              child: Row(
                children: [
                  SizedBox(width: padding),
                  Container(
                    alignment: Alignment.center,
                    child: ClipOval(child: ImageWidget(leftImageUrl, size: $imageSize)),
                  ),
                ],
              ),
            )
          : SizedBox(width: padding + $imageSize),
      actions: [
        rightImageUrl != null
            ? InkWell(
                onTap: onRightTap,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipOval(child: ImageWidget(rightImageUrl, size: $imageSize)),
                    ),
                    SizedBox(width: padding),
                  ],
                ),
              )
            : SizedBox(width: padding + $imageSize)
      ],
    );
  }
}
