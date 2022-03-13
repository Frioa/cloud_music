import 'package:flutter/material.dart';


class PageConfiguration {
  final String key;
  final String path;
  final Widget widget;
  final Map<String, Object> parameter;

  PageConfiguration({
    required this.key,
    required this.path,
    required this.widget,
    this.parameter = const {},
  });

  @override
  String toString() {
    return 'PageConfiguration{key: $key, path: $path}';
  }
}
