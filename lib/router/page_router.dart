import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

///
/// TODO:1. onGenerateRoute，等接口的作用。
///
///
final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class R extends RouterDelegate<PageConfiguration>
    with PopNavigatorRouterDelegateMixin<PageConfiguration>, ChangeNotifier {
  R() {
    _addPage(homePage);
  }

  final GlobalKey<NavigatorState> key = GlobalKey();
  final List<Page> _pages = [];

  static R of(BuildContext context) {
    final delegate = Router.of(context).routerDelegate as RouterDelegate<Object>;
    assert(delegate is R, 'Delegate type mismatch!');
    return delegate as R;
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => key;

  @override
  PageConfiguration get currentConfiguration {
    return _pages.isEmpty ? homePage : _pages.last.arguments as PageConfiguration;
  }

  T? getParameter<T>(String key) {
    return currentConfiguration.parameter[key];
  }

  /// Number of pages function
  int get numPages => _pages.length;

  bool get canPop => _pages.length > 1;

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    final shouldAddPage =
        _pages.isEmpty || (_pages.last.arguments as PageConfiguration?)?.path != configuration.path;
    logger.d('setNewRoutePath configuration $configuration shouldAddPage $shouldAddPage');

    if (shouldAddPage) {
      _pages.clear();
      _addPage(configuration);
    }
    return SynchronousFuture(null);
  }

  @override
  Future<bool> popRoute() {
    logger.d('popRoute');
    if (canPop) {
      _removePage(_pages.last);
      return SynchronousFuture(true);
    }
    return SynchronousFuture(false);
  }

  void replace(PageConfiguration newRoute) {
    logger.d('replace newRoute: $newRoute');
    if (_pages.isNotEmpty) {
      _pages.removeLast();
    }
    _addPage(newRoute);
  }

  void setPath(List<Page> path) {
    logger.d('setPath path: $path');
    _pages.clear();
    _pages.addAll(path);
  }

  void replaceAll(PageConfiguration newRoute) {
    logger.d('replaceAll path: $newRoute');
    setNewRoutePath(newRoute);
  }

  void push(Pages pages, {Map<String, Object> parameter = const {}}) {
    logger.d('push path: ${pages.name}');
    _addPage(pageFactor(pages, parameter: parameter));
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    logger.d('pushWidget child: $child, newRoute: $newRoute');
    _addPageData(newRoute);
  }

  void addAll(List<PageConfiguration> routes) {
    logger.d('addAll routes: $routes');
    _pages.clear();
    for (final route in routes) {
      _addPage(route);
    }
  }

  void pop() {
    logger.d('pop canPop: $canPop');

    if (canPop) {
      _removePage(_pages.last);
    }
  }

  void _addPage(PageConfiguration pageConfig) {
    final shouldAddPage =
        _pages.isEmpty || (_pages.last.arguments as PageConfiguration?)?.path != pageConfig.path;

    logger.d('_addPage pageConfig: $pageConfig shouldAddPage: $shouldAddPage');
    if (shouldAddPage) {
      _addPageData(pageConfig);
      notifyListeners();
    }
  }

  void _addPageData(PageConfiguration pageConfig) {
    _pages.add(
      CupertinoPage(
        child: pageConfig.widget,
        key: ValueKey(pageConfig.key),
        name: pageConfig.path,
        arguments: pageConfig,
      ),
    );
  }

  void _removePage(Page? page) {
    if (page != null) {
      _pages.remove(page);
    }
    notifyListeners();
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    final didPop = route.didPop(result);
    logger.d(
        '_onPopPage: name=${(route as PageRoute).settings.name}, result: $result, didPop: $didPop');
    if (!didPop) {
      return false;
    }
    if (canPop) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.unmodifiable(_pages),
      onPopPage: _onPopPage,
      observers: [routeObserver],
    );
  }
}
