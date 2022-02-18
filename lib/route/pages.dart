import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/account/login_page.dart';
import 'package:cloud_music/page/page.dart';

enum Pages {
  home,
  login,
  dailySong
}

class Routes {
  static const String homePath = '/';
  static const String loginPath = '/login';
  static const String dailySongPath = '/dailysong';

  static final PageConfiguration homePageConfig = PageConfiguration(
    key: homePath,
    path: homePath,
    uiPage: Pages.home,
    widget: const HomePage(),
  );

  static final PageConfiguration loginPageConfig = PageConfiguration(
    key: loginPath,
    path: loginPath,
    uiPage: Pages.login,
    widget: const LoginPage(),
  );

  static final PageConfiguration dailysongConfig = PageConfiguration(
    key: dailySongPath,
    path: dailySongPath,
    uiPage: Pages.dailySong,
    widget: const DailySongPage(),
  );
}
