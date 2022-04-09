import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';

import 'home_bottom_player_widget.dart';

class PlayerOverlay {
  static bool isDispose = true;
  static final OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) {
      return const HomeBottomPlayerWidget();
    },
  );

  static showPlayer(BuildContext context) {
    if (!isDispose) {
      logger.d("PlayerOverlay is show");
      return;
    }

    final overlayEntry = OverlayEntry(
      builder: (context) {
        return const Positioned(bottom: 0, child: HomeBottomPlayerWidget());
      },
    );

    isDispose = false;
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Overlay.of(context)!.insert(overlayEntry);
    });
  }

  static dispose(BuildContext context) {
    if (isDispose) {
      logger.d("PlayerOverlay is dispose");
      return;
    }

    isDispose = true;
    overlayEntry.remove();
  }
}
