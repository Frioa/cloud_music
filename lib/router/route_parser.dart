import 'package:cloud_music/common/common.dart';
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
      return SynchronousFuture(homePage);
    }
    final path = '/${uri.pathSegments[0]}';

    final config = pageFactor(path.toPages());
    return SynchronousFuture(config);
  }

  @override
  RouteInformation? restoreRouteInformation(PageConfiguration configuration) {
    logger.d('restoreRouteInformation: $configuration');
    return RouteInformation(location: configuration.path);
  }
}

extension on String {
  Pages toPages() {
    for (final page in Pages.values) {
      if (endsWith(page.name)) return page;
    }

    return Pages.unknown;
  }
}
