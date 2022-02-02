import 'package:cloud_music/route/pages.dart';
import 'package:flutter/material.dart';

class PageAction {
  PageConfiguration? page;
  List<PageConfiguration>? pages;
  Widget? widget;

  PageAction({
    this.page,
    this.pages,
    this.widget,
  });

  @override
  String toString() {
    return 'PageAction{ page: $page, pages: $pages, widget: $widget}';
  }
}

class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;
  final Widget? widget;

  PageConfiguration({
    required this.key,
    required this.path,
    required this.uiPage,
    this.widget,
  });

  @override
  String toString() {
    return 'PageConfiguration{key: $key, path: $path, uiPage: $uiPage}';
  }
}
