import 'package:cloud_music/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageRouter pageRouterDelegate = PageRouter();

    return ScreenUtilInit(
      builder: () {
        return MaterialApp.router(
          title: 'Cloud Music',
          routerDelegate: pageRouterDelegate,
          routeInformationParser: RouteParser(),
          backButtonDispatcher: BackDispatcher(pageRouterDelegate),
        );
      },
    );
  }
}
