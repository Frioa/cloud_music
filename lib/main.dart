import 'package:cloud_music/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/flutter_layout.dart';
import 'package:flutter_logger/flutter_logger.dart';

void main() {
  runApp(const MyApp());
  Logger.init(enableLogger: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterLayoutInitWidget(
      builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}
