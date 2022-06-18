import 'package:flutter/material.dart';
import 'package:media/media.dart';

mixin MvAppLifecycleMixin<W extends StatefulWidget> on State<W>, WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      PlayerController.instance.pause();
    }

    if (state == AppLifecycleState.resumed) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        if (!mounted) return;
        PlayerController.instance.continueplay();
      });
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}
