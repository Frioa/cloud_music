import 'dart:ui';

import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';
import 'package:media/model/player_value.dart';

class HomeBottomPlayerWidget extends StatefulWidget {
  const HomeBottomPlayerWidget({Key? key}) : super(key: key);

  static double get height => 103.w;

  @override
  State<HomeBottomPlayerWidget> createState() => HomeBottomPlayerWidgetState();
}

class HomeBottomPlayerWidgetState extends State<HomeBottomPlayerWidget>
    with TickerProviderStateMixin {
  bool isPlaying = false;

  late final AnimationController playerControl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );

  late final Animation animation = Tween<double>(begin: -1.0, end: 0.0).animate(playerControl);

  AudioPlayerController get controller => AudioPlayerController.instance;

  @override
  void initState() {
    super.initState();
    controller.addListener(valueChanged);
  }

  @override
  void dispose() {
    controller.removeListener(valueChanged);
    super.dispose();
  }

  void valueChanged() {
    if (isPlaying != controller.value.isPlaying) {
      isPlaying = controller.value.isPlaying;

      // 开始播放视频
      // if (isPlaying) {
      //   playerControl.forward(from: playerControl.value);
      // } else {
      //   playerControl.reverse(from: playerControl.value);
      // }
      setState(() {});
    }
  }

  void show() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      playerControl.forward(from: playerControl.value);
    });
  }

  void hide() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      playerControl.reverse(from: playerControl.value);
    });
  }

  Widget _buildBackground() {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26.w),
            topRight: Radius.circular(26.w),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12.w, sigmaY: 12.w),
            child: Container(
              width: 1.sw,
              height: HomeBottomPlayerWidget.height * animation.value,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.6539),
                    Colors.white.withOpacity(0.3639),
                    Colors.white.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      animation: animation,
    );
  }

  Widget _buildPlayer() {
    return Material(
      child: Column(
        children: [
          ValueListenableBuilder<PlayerValue>(
            valueListenable: AudioPlayerController.instance,
            builder: (context, value, child) {
              return SizedBox(
                width: 1.sw,
                child: LinearProgressIndicator(
                  minHeight: 3.w,
                  value: controller.progress,
                  backgroundColor: Colors.transparent,
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            height: 97.w,
            width: 1.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous, size: 27.w),
                  onPressed: () {},
                ),
                SizedBox(width: 60.w),
                InkWell(
                  onTap: () {
                    controller.pauseOrPlay();
                  },
                  child: ImageWidget(
                    isPlaying ? Assets.icBtnPause.path : Assets.icBtnPlay.path,
                    size: 27.w,
                  ),
                ),
                SizedBox(width: 60.w),
                IconButton(
                  icon: Icon(Icons.skip_next, size: 27.w),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SizedBox(
          width: 1.sw,
          height: HomeBottomPlayerWidget.height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // _buildBackground(),
              Positioned(bottom: HomeBottomPlayerWidget.height * animation.value, child: _buildPlayer()),
            ],
          ),
        );
      },
    );
  }
}
