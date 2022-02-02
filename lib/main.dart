import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/route/routes.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final PageRouter pageRouterDelegate = PageRouter();
  final RouteParser parser = RouteParser();
  late final BackDispatcher backDispatcher = BackDispatcher(pageRouterDelegate);

  @override
  Widget build(BuildContext context) {
    return BlocWrapper(
      child: ScreenUtilInit(
        builder: () {
          return BlocBuilder<AppBloc, AppState>(
            builder: (_, state) {
              return MaterialApp.router(
                title: 'Cloud Music',
                theme: state.theme,
                routerDelegate: pageRouterDelegate,
                routeInformationParser: parser,
                backButtonDispatcher: backDispatcher,
              );
            },
          );
        },
      ),
    );
  }
}
