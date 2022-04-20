import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';
import 'package:media/model/player_value.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  AudioPlayerController get controller => AudioPlayerController.instance;

  Widget _buildCurTime() {
    return ValueListenableBuilder<PlayerValue>(
      valueListenable: AudioPlayerController.instance,
      builder: (context, value, child) {
        if (!controller.value.isPlaying) return const SizedBox();

        final duration = controller.value.position;
        final second = duration.inSeconds - (duration.inMinutes * Duration.secondsPerMinute);

        return Text(
          '${duration.inMinutes}:${second < 10 ? '0$second' : second}',
          style: Theme.of(context).tsDesc2.copyWith(fontSize: 10.sp),
        );
      },
    );
  }

  Widget _buildEndTime(BuildContext context) {
    final state = context.watch<PlayerBloc>().state;
    if (!state.isPlaying) return const SizedBox();

    final duration = context.watch<PlayerBloc>().state.duration;
    final second = duration.inSeconds - (duration.inMinutes * Duration.secondsPerMinute);

    return Text(
      '${duration.inMinutes}:${second < 10 ? '0$second' : second}',
      style: Theme.of(context).tsDesc2.copyWith(fontSize: 10.sp),
    );
  }

  Widget _buildProgress() {
    return ValueListenableBuilder<PlayerValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        return Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          width: 1.sw,
          child: Row(
            children: [
              SizedBox(width: 8.w),
              _buildCurTime(),
              SizedBox(width: 8.w),
              Expanded(
                child: SizedBox(
                  height: 3.w,
                  child: LinearProgressIndicator(
                    minHeight: 3.w,
                    value: controller.progress,
                    backgroundColor: Colors.transparent,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              _buildEndTime(context),
              SizedBox(width: 8.w),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = context.watch<PlayerBloc>().state.isPlaying;
    return Material(
      child: Column(
        children: [
          _buildProgress(),
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
                    AudioPlayerController.instance.pauseOrPlay();
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
