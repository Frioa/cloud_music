import 'package:flutter/cupertino.dart';
import 'package:media/player_controller.dart';

mixin PlayerLifecycMixin<W extends StatefulWidget> on State<W> {
  double get videoWidth => MediaQuery.of(context).size.width;

  double get videoHeight =>
      MediaQuery.of(context).size.width / PlayerController.instance.value.aspect;

  bool get _forbidSetState => !mounted || !TickerMode.of(context);

  @override
  void initState() {
    super.initState();
    PlayerController.instance.addLifecyclelistener(this);
  }

  @override
  void dispose() {
    PlayerController.instance.removeLifecyclelistener(this);
    super.dispose();
  }

  void onComplete() {
    if (_forbidSetState) return;

    setState(() {});
  }

  void onError() {
    if (_forbidSetState) return;
    setState(() {});
  }

  void onPrepare() {
    if (_forbidSetState) return;
    setState(() {});
  }

  void onProgress() {
    if (!_forbidSetState) return;
  }
}
