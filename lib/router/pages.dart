import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/page.dart';
import 'package:flutter/material.dart';

enum Pages {
  home,
  login,
  dailySong,
  playRecord,
  songList,
  unknown,
}

extension on Pages {
  String get path => '/$name';
}

PageConfiguration get homePage => pageFactor(Pages.home);

PageConfiguration pageFactor(Pages pages, {Map<String, Object> parameter = const {}}) {
  final key = pages.path;
  final path = pages.path;
  final Widget widget;

  switch (pages) {
    case Pages.unknown:
      widget = const HomePage();
      break;
    case Pages.home:
      widget = const HomePage();
      break;
    case Pages.login:
      widget = const LoginPage();
      break;
    case Pages.dailySong:
      widget = const DailySongPage();
      break;
    case Pages.playRecord:
      widget = const PlayRecordPage();
      break;
    case Pages.songList:
      widget = const SongListPage();
      break;
  }

  return PageConfiguration(
    key: key,
    path: path,
    widget: widget,
    parameter: parameter,
  );
}
