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
    GestureTapCallback? onLeadingTap,
    GestureTapCallback? onRightTap,
  }) {
    return AppBar(
      leadingWidth: 69.w,
      leading: leading != null
          ? InkWell(
              onTap: onLeadingTap,
              child: Row(
                children: [
                  SizedBox(width: 20.w),
                  Container(
                    alignment: Alignment.center,
                    child: ClipOval(child: ImageWidget(leading, size: 49.w)),
                  ),
                ],
              ),
            )
          : null,
      actions: [
        action != null
            ? InkWell(
                onTap: onRightTap,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipOval(child: ImageWidget(action, size: 49.w)),
                    ),
                    SizedBox(width: 20.w),
                  ],
                ),
              )
            : const SizedBox()
      ],
    );
  }
}