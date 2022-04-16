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
    String? leading,
    String? action,
    Widget? title,
    GestureTapCallback? onLeadingTap,
    GestureTapCallback? onRightTap,
  }) {
    final imageSize = 43.w;
    final padding = 20.w;

    return AppBar(
      leadingWidth: 69.w,
      title: Center(child: title),
      leading: leading != null
          ? InkWell(
              onTap: onLeadingTap,
              child: Row(
                children: [
                  SizedBox(width: padding),
                  Container(
                    alignment: Alignment.center,
                    child: ClipOval(child: ImageWidget(leading, size: imageSize)),
                  ),
                ],
              ),
            )
          : SizedBox(width: padding + imageSize),
      actions: [
        action != null
            ? InkWell(
                onTap: onRightTap,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipOval(child: ImageWidget(action, size: imageSize)),
                    ),
                    SizedBox(width: padding),
                  ],
                ),
              )
            : SizedBox(width: padding + imageSize)
      ],
    );
  }
}
