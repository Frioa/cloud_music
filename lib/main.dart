import 'package:cloud_music/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_music/common/common.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDio();
  LocaleSettings.useDeviceLocale(); // initialize with the right locale
  LocaleSettings.setLocale(AppLocale.cn);

  BlocOverrides.runZoned(() => runApp(MyApp()), blocObserver: AppBlocObserver());

  /// 状态栏的全透明沉浸
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final R pageRouterDelegate = R();
  final RouteParser parser = RouteParser();

  late final BackDispatcher backDispatcher = BackDispatcher(pageRouterDelegate);

  @override
  Widget build(BuildContext context) {
    return BlocWrapper(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return BlocBuilder<AppBloc, AppState>(
            builder: (_, state) {
              return OKToast(
                child: MaterialApp.router(
                  title: 'Cloud Music',
                  theme: state.theme,
                  routerDelegate: pageRouterDelegate,
                  routeInformationParser: parser,
                  backButtonDispatcher: backDispatcher,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
