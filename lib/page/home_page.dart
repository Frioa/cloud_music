import 'package:flutter/material.dart';
import 'package:media/media.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = PlayerJni();
  bool init = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Stack(
        children: [
          init
              ? LayoutBuilder(builder: (_, c) {
                  return Container(
                    color: Colors.amber,
                    width: c.maxWidth,
                    height: c.maxHeight,
                    child: const SurfaceViewWidget(),
                  );
                })
              : const SizedBox(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () async {
                    await player.init();
                    init = true;
                    setState(() {});
                  },
                  child: const Text("初始化"),
                ),
                TextButton(
                  onPressed: () async {
                    await player.setDataSource('http://vjs.zencdn.net/v/oceans.mp4');
                  },
                  child: const Text("setDataSource"),
                ),
                TextButton(
                  onPressed: () async {
                    player.start();

                    // methodChannel.invokeMethod('ceshi');
                  },
                  child: const Text("start"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
