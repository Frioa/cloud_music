import 'package:cloud_music/bloc/player/player_bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';
import 'package:media/model/player_value.dart';
import 'package:media/player_controller.dart';

class PlayerProgressWidget extends StatelessWidget {
  final PlayerController controller;
  final Color? backgroundColor;
  final Color? progressColor;

  const PlayerProgressWidget({
    Key? key,
    required this.controller,
    this.backgroundColor,
    this.progressColor,
  }) : super(key: key);

  Widget _buildCurTime() {
    return ValueListenableBuilder<PlayerValue>(
      valueListenable: PlayerController.instance,
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
          color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
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
                    color: progressColor ?? Theme.of(context).primaryColor,
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
    return _buildProgress();
  }
}
