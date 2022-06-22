// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';

/// A material design back button.
///
/// A [BackButtonWidget] is an [IconButton] with a "back" icon appropriate for the
/// current [TargetPlatform]. When pressed, the back button calls
/// [Navigator.maybePop] to return to the previous route unless a custom
/// [onPressed] callback is provided.
///
/// When deciding to display a [BackButtonWidget], consider using
/// `ModalRoute.of(context)?.canPop` to check whether the current route can be
/// popped. If that value is false (e.g., because the current route is the
/// initial route), the [BackButtonWidget] will not have any effect when pressed,
/// which could frustrate the user.
///
/// Requires one of its ancestors to be a [Material] widget.
///
/// See also:
///
///  * [AppBar], which automatically uses a [BackButtonWidget] in its
///    [AppBar.leading] slot when the [Scaffold] has no [Drawer] and the
///    current [Route] is not the [Navigator]'s first route.
///  * [BackButtonIcon], which is useful if you need to create a back button
///    that responds differently to being pressed.
///  * [IconButton], which is a more general widget for creating buttons with
///    icons.
///  * [CloseButtonWidget], an alternative which may be more appropriate for leaf
///    node pages in the navigation tree.
class BackButtonWidget extends StatelessWidget {
  /// Creates an [IconButton] with the appropriate "back" icon for the current
  /// target platform.
  const BackButtonWidget({Key? key, this.color, this.onPressed}) : super(key: key);

  /// The color to use for the icon.
  ///
  /// Defaults to the [IconThemeData.color] specified in the ambient [IconTheme],
  /// which usually matches the ambient [Theme]'s [ThemeData.iconTheme].
  final Color? color;

  /// An override callback to perform instead of the default behavior which is
  /// to pop the [Navigator].
  ///
  /// It can, for instance, be used to pop the platform's navigation stack
  /// via [SystemNavigator] instead of Flutter's [Navigator] in add-to-app
  /// situations.
  ///
  /// Defaults to null.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const BackButtonIcon(),
      color: color,
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({Key? key, this.color, this.onPressed}) : super(key: key);

  final Color? color;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: ImageWidget(
          Assets.icClose,
          color: color,
          size: 20.w,
        ),
      ),
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        } else {
          Navigator.maybePop(context);
        }
      },
    );
  }
}
