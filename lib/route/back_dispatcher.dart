import 'package:cloud_music/route/routes.dart';
import 'package:flutter/material.dart';

class BackDispatcher extends RootBackButtonDispatcher {
  final PageRouter _routerDelegate;

  BackDispatcher(this._routerDelegate) : super();

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}
