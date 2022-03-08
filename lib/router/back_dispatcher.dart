import 'package:cloud_music/router/routes.dart';
import 'package:flutter/material.dart';

class BackDispatcher extends RootBackButtonDispatcher {
  final R _routerDelegate;

  BackDispatcher(this._routerDelegate) : super();

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}
