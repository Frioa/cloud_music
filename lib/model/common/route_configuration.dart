import 'package:flutter/material.dart';


class PageConfiguration {
  final String key;
  final String path;
  final Widget widget;
  final bool showPlayerOverlay;
  final Map<String, dynamic> parameter;

  PageConfiguration({
    required this.key,
    required this.path,
    required this.widget,
    required this.showPlayerOverlay,
    this.parameter = const {},
  });

  @override
  String toString() {
    return 'PageConfiguration{key: $key, path: $path}';
  }
}
