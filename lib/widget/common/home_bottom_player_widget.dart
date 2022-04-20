import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';
import 'package:media/model/player_value.dart';

class HomeBottomPlayerWidget extends StatefulWidget {
  const HomeBottomPlayerWidget({Key? key}) : super(key: key);

  static double get height => 203.w;

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

  late final AnimationController songDetailControl = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );

  late final Animation pAnimation = Tween<double>(begin: -1.0, end: 0.0).animate(playerControl);
  late final Animation sdAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(songDetailControl);

  AudioPlayerController get controller => AudioPlayerController.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    songDetailControl.dispose();
    controller.dispose();
    super.dispose();
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
      animation: sdAnimation,
      builder: (BuildContext context, Widget? child) {
        final song = context.read<PlayerBloc>().state.playingSong;
        final height = 184.w * sdAnimation.value;

        return Material(
          child: InkWell(
            onTap: () {
              R.of(context).push(Pages.playingPage);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26.w),
                topRight: Radius.circular(26.w),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12.w, sigmaY: 12.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
                  width: 1.sw,
                  height: height,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.w),
                        child: ImageWidget(
                          context.read<PlayerBloc>().state.avatar,
                          size: 46.w,
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              song?.name ?? '',
                              style: Theme.of(context).tsTitleBold2.copyWith(fontSize: 16.w),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              song?.singerAlbumDesc ?? '',
                              style: Theme.of(context).hint2,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPlayer() {
    return const PlayerWidget();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlayerBloc, PlayerState>(
      listener: (context, state) {
        if (state.isPlaying) {
          songDetailControl.forward(from: songDetailControl.value);
          setState(() {});
        } else {
          songDetailControl.reverse(from: songDetailControl.value);
          setState(() {});
        }
      },
      child: AnimatedBuilder(
        animation: pAnimation,
        builder: (BuildContext context, Widget? child) {
          return SizedBox(
            width: 1.sw,
            height: HomeBottomPlayerWidget.height,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 184.w * pAnimation.value,
                  child: _buildBackground(),
                ),
                Positioned(
                  bottom: HomeBottomPlayerWidget.height * pAnimation.value,
                  child: _buildPlayer(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
