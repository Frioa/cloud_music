import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  PlayerController get controller => PlayerController.instance;

  @override
  Widget build(BuildContext context) {
    final isPlaying = context.watch<PlayerBloc>().state.isPlaying;
    return Material(
      child: Column(
        children: [
          PlayerProgressWidget(controller: controller),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            height: 97.w,
            width: 1.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous, size: 27.w),
                  onPressed: () {
                    context.read<PlayerBloc>().add(const PlayerEvent.preSong());
                  },
                ),
                SizedBox(width: 26.w),
                InkWell(
                  onTap: () {
                    PlayerController.instance.pauseOrPlay();
                  },
                  child: ClipOval(
                    child: Container(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      alignment: Alignment.center,
                      width: 55.w,
                      height: 55.w,
                      child: ImageWidget(
                        isPlaying ? Assets.icBtnPause.path : Assets.icBtnPlay.path,
                        size: 27.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 26.w),
                IconButton(
                  icon: Icon(Icons.skip_next, size: 27.w),
                  onPressed: () {
                    context.read<PlayerBloc>().add(const PlayerEvent.nextSong());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
