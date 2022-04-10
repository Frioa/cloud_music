import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';

import 'home_bottom_player_widget.dart';

class PlayerOverlay {
  static bool init = false;

  static final GlobalKey _key = GlobalKey<HomeBottomPlayerWidgetState>();

  static final OverlayEntry overlayEntry = OverlayEntry(
    builder: (context) {
      return HomeBottomPlayerWidget(key: _key);
    },
  );

  static showPlayer(BuildContext context) {
    logger.d("PlayerOverlay: showPlayer $init");
    if (!init) {
      init = true;
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        Overlay.of(context)!.insert(overlayEntry);
      });
      return;
    }

    (_key.currentState as HomeBottomPlayerWidgetState).show();
  }

  static dispose(BuildContext context) {
    (_key.currentState as HomeBottomPlayerWidgetState).hide();
  }
}
