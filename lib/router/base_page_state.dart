import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';

abstract class BasePageState<T extends StatefulWidget> extends State<T> with RouteAware {
  PageConfiguration get currentConfiguration => R.of(context).currentConfiguration;

  ThemeData get L => Theme.of(context);

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (currentConfiguration.showPlayerOverlay) {
      PlayerOverlay.showPlayer(context);
    }
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void didPopNext() {
    super.didPopNext();
    logger.d("didPopNext ${currentConfiguration.path}");
    if (currentConfiguration.showPlayerOverlay) {
      PlayerOverlay.showPlayer(context);
    }
  }

  @override
  void didPush() {
    super.didPush();
    if (!currentConfiguration.showPlayerOverlay) {
      PlayerOverlay.dispose(context);
    }
    logger.d("didPush ${currentConfiguration.path}");
  }

  @override
  void didPop() {
    super.didPop();
    logger.d("didPop ${currentConfiguration.path}");
  }

  @override
  void didPushNext() {
    super.didPushNext();
    logger.d("didPushNext ${currentConfiguration.path}");
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
