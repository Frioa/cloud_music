import 'package:cloud_music/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = PlayerJni.instance;

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
                        'http://vodkgeyttp8.vod.126.net/cloudmusic/3793/core/de43/667c55c652dbc078566ca5b4447a6e7b.mp4?wsSecret=f8b975678c101b00bb97d13e74667ea0&wsTime=1643628520');
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
                TextButton(
                  onPressed: () async {
                    PageRouter.of(context).push(Routes.loginPageConfig);
                  },
                  child: const Text("login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
