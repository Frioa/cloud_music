import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/player_controller.dart';

mixin MvActionMixin<W extends StatefulWidget> on State<W> {
  Song? _song;

  Song? get song => _song;

  void onMvUrlSuccess() {
    if (!mounted) return;
    final url = context.read<MVBloc>().state.mvUrlVm?.response?.data.url;
    if (url == null) return;

    PlayerController.instance.play(url);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (song == null) {
      _song = R.of(context).getParameter<Song>(PageKey.mvSong);
      context.read<MVBloc>().add(MVEvent.requestMVURL(song!.mv, onSuccess: onMvUrlSuccess));
      context.read<MVBloc>().add(MVEvent.requestDetail(song!.mv));

      if (song!.ar.isNotEmpty) {
        context.read<ArtistBloc>().add(ArtistEvent.requestArtistsDetail(song!.ar[0].id));
      }
    }
    logger.d("mv id: ${song?.mv}");
  }
}
