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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (_, c) {
              return SizedBox(
                width: c.maxWidth,
                height: c.maxHeight,
                child: const SurfaceViewWidget(),
              );
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () async {
                    await player.init();
                    await player.setDataSource(
                        '/data/data/com.yqq.cloudmusic.cloud_music/cache/oceans.mp4');
                  },
                  child: const Text("init"),
                ),
                TextButton(
                  onPressed: () async {
                    player.start();
                  },
                  child: const Text("start"),
                ),
                TextButton(
                  onPressed: () async {
                    player.seek(10);
                  },
                  child: const Text("seek"),
                ),
                TextButton(
                  onPressed: () async {
                    player.stop();
                  },
                  child: const Text("stop"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
