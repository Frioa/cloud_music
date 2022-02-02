import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/home_page.dart';
import 'package:cloud_music/page/login_page.dart';

enum Pages {
  home,
  login,
}

class Routes {
  static const String homePath = '/home';
  static const String loginPath = '/login';

  static final PageConfiguration homePageConfig = PageConfiguration(
    key: 'home',
    path: homePath,
    uiPage: Pages.home,
    widget: const HomePage(title: 'home'),
  );

  static final PageConfiguration loginPageConfig = PageConfiguration(
    key: 'login',
    path: loginPath,
    uiPage: Pages.login,
    widget: const LoginPage(),
  );
}
