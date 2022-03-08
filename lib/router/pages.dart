import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/page.dart';

/// Todo: Navigator 2.0
enum Pages {
  home,
  login,
  dailySong,
  playRecord,
  unknown,
}



extension on Pages {
  String get path => '/$name';
}

PageConfiguration get homePage => pageFactor(Pages.home);

PageConfiguration pageFactor(Pages pages) {
  switch (pages) {
    case Pages.unknown:
      return PageConfiguration(
        key: pages.path,
        path: pages.path,
        widget: const HomePage(),
      );
    case Pages.home:
      return PageConfiguration(
        key: pages.path,
        path: pages.path,
        widget: const HomePage(),
      );
    case Pages.login:
      return PageConfiguration(
        key: pages.path,
        path: pages.path,
        widget: const LoginPage(),
      );
    case Pages.dailySong:
      return PageConfiguration(
        key: pages.path,
        path: pages.path,
        widget: const DailySongPage(),
      );
    case Pages.playRecord:
      return PageConfiguration(
        key: pages.path,
        path: pages.path,
        widget: const PlayRecordPage(),
      );
  }
}
