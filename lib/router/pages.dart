import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/pages/page.dart';
import 'package:flutter/material.dart';

enum Pages {
  home,
  login,
  dailySong,
  playRecord,
  playlistDetail,
  playingPage,
  mv,
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
  bool showPlayer = false;

  switch (pages) {
    case Pages.unknown:
      showPlayer = true;
      widget = const HomePage();
      break;
    case Pages.home:
      showPlayer = true;
      widget = const HomePage();
      break;
    case Pages.login:
      showPlayer = false;
      widget = const LoginPage();
      break;
    case Pages.dailySong:
      showPlayer = false;
      widget = const DailySongPage();
      break;
    case Pages.playRecord:
      showPlayer = true;
      widget = const PlayRecordPage();
      break;
    case Pages.playlistDetail:
      showPlayer = true;
      widget = const PlayerListDetailPage();
      break;
    case Pages.playingPage:
      showPlayer = false;
      widget = const PlayingPage();
      break;
    case Pages.mv:
      showPlayer = false;
      widget = const MVPage();
      break;
  }

  return PageConfiguration(
    key: key,
    path: path,
    widget: widget,
    parameter: parameter,
    showPlayerOverlay: showPlayer
  );
}
