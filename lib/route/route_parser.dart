import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/model.dart';
import 'package:cloud_music/route/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(RouteInformation routeInformation) {
    logger.d(
        'parseRouteInformation: location: ${routeInformation.location} state: ${routeInformation.state}');

    final uri = Uri.parse(routeInformation.location ?? '');
    logger.d('parseRouteInformation: uri: $uri');

    if (uri.pathSegments.isEmpty) {
      return SynchronousFuture(Routes.homePageConfig);
    }
    final path = '/' + uri.pathSegments[0];

    switch (path) {
      case Routes.homePath:
        return SynchronousFuture(Routes.homePageConfig);
      case Routes.loginPath:
        return SynchronousFuture(Routes.loginPageConfig);
    }
    return SynchronousFuture(Routes.homePageConfig);
  }

  @override
  RouteInformation? restoreRouteInformation(PageConfiguration configuration) {
    logger.d('restoreRouteInformation: $configuration');
    return RouteInformation(location: configuration.path);
  }
}
