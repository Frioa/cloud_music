import 'dart:math';

import 'package:cloud_music/bloc/player/player_bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/player_controller.dart';

class PlayersStateWrap extends StatefulWidget {
  final Widget child;

  const PlayersStateWrap({Key? key, required this.child}) : super(key: key);

  @override
  State<PlayersStateWrap> createState() => _PlayersStateWrapState();
}

class _PlayersStateWrapState extends State<PlayersStateWrap> {
  AudioPlayerController get controller => AudioPlayerController.instance;

  bool isPlaying = false;

  Duration duration = Duration.zero;

  late bool complete = controller.value.complete;

  final Random random = Random();

  @override
  void initState() {
    super.initState();
    controller.addListener(_valueChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isPlaying = context.watch<PlayerBloc>().state.isPlaying;
    duration = context.watch<PlayerBloc>().state.duration;
  }

  @override
  void dispose() {
    controller.removeListener(_valueChanged);
    super.dispose();
  }

  void _valueChanged() {
    if (isPlaying != controller.value.isPlaying) {
      isPlaying = controller.value.isPlaying;
      context.read<PlayerBloc>().add(PlayerEvent.isPlaying(isPlaying));
    }
    if (duration != controller.value.duration) {
      duration = controller.value.duration;
      context.read<PlayerBloc>().add(PlayerEvent.duration(duration));
    }

    if (complete != controller.value.complete) {
      complete = controller.value.complete;
      if (complete && !controller.value.isVideo) {
        context.read<PlayerBloc>().add(const PlayerEvent.nextSong());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
