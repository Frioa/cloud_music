import 'dart:ui';

import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';
import 'package:media/model/player_value.dart';

class HomeBottomPlayerWidget extends StatefulWidget {
  const HomeBottomPlayerWidget({Key? key}) : super(key: key);

  static double get height => 194.w;

  @override
  State<HomeBottomPlayerWidget> createState() => _HomeBottomPlayerWidgetState();
}

class _HomeBottomPlayerWidgetState extends State<HomeBottomPlayerWidget> {
  bool isPlaying = false;

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
      setState(() {});
    }
  }

  Widget _buildBackground() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(26.w),
        topRight: Radius.circular(26.w),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12.w, sigmaY: 12.w),
        child: Container(
          width: 1.sw,
          height: HomeBottomPlayerWidget.height,
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
            height: 100.w,
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
    return Stack(
      children: [
        _buildBackground(),
        Positioned(bottom: 0, child: _buildPlayer()),
      ],
    );
  }
}
