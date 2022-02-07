import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/account/login_page.dart';
import 'package:cloud_music/page/page.dart';

enum Pages {
  home,
  login,
}

class Routes {
  static const String homePath = '/';
  static const String loginPath = '/login';

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
}
