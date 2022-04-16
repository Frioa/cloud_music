import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';

class PlayerBloc extends Bloc<BasePlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    on<BasePlayerEvent>((event, emit) async {
      logger.d('PlayerBloc event:$event');
      if (event is UpdatePlayerSong) {
        emit.call(state.copyWith.playingSong(event.song));
      }

      if (event is UpdateSongDetail) {
        emit.call(state.copyWith.songDetail(event.songDetail));
      }

      if (event is UpdatePlayer) {
        emit.call(state.copyWith.isPlaying(event.isPlaying));
      }

      if (event is UpdateDuration) {
        emit.call(state.copyWith.duration(event.duration));
      }
    });
  }
}
