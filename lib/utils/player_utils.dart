import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:media/media.dart';

class PlayerManager {
  static AudioPlayerController get _controller => AudioPlayerController.instance;

  static void play(BuildContext context, Song song) {
    context.read<PlayerBloc>().add(PlayerEvent.song(song));
    _request(context, song.id.toString());
  }

  static void _request(BuildContext context, String id) {
    SearchClient(dio).songUrl(id).then((value) async {
      final detail = value.data![0];
      _controller.play(detail.url!);
      GlobalContextHandler().postEvent(SongDetailGlobalEvent(detail));
    });
  }
}
