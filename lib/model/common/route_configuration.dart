import 'package:flutter/material.dart';


class PageConfiguration {
  final String key;
  final String path;
  final Widget widget;

  PageConfiguration({
    required this.key,
    required this.path,
    required this.widget,
  });

  @override
  String toString() {
    return 'PageConfiguration{key: $key, path: $path}';
  }
}
