import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/page/home_page.dart';

enum Pages {
  home,
}

class Routes {
  static const String homePath = '/home';

  static final PageConfiguration homePageConfig = PageConfiguration(
    key: 'home',
    path: homePath,
    uiPage: Pages.home,
    widget: const HomePage(title: 'home'),
  );
}
