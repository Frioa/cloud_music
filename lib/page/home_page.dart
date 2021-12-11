import 'package:flutter/material.dart';
import 'package:media/media.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Player.instance.init(
                  onPrepare: () {
                    print('object onPrepare');
                  },
                  onProgress: (value) {
                    print('object onProgress $value');
                  },
                  onError: (value) {
                    print('object onError $value');
                  },
                );
              },
              child: const Text("初始化"),
            ),
            TextButton(
              onPressed: () {
                Player.instance.setDataSource('path');
              },
              child: const Text("path"),
            )
          ],
        ),
      ),
    );
  }
}
