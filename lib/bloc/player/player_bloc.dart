import 'package:cloud_music/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    on<PlayerEvent>((event, emit) async {
      logger.d('PlayerBloc event:$event');

      event.map(
        song: (value) => emit(state.copyWith(playingSong: value.song)),
        songDetail: (value) => emit(state.copyWith(songDetail: value.songDetail)),
        isPlaying: (value) => emit(state.copyWith(isPlaying: value.isPlaying)),
        duration: (value) => emit(state.copyWith(duration: value.duration)),
      );
    });
  }
}

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.song(Song song) = _song;

  const factory PlayerEvent.songDetail(SongDetail songDetail) = _songDetail;

  const factory PlayerEvent.isPlaying(bool isPlaying) = _isPlaying;

  const factory PlayerEvent.duration(Duration duration) = _duration;
}

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    Song? playingSong,
    SongDetail? songDetail,
    required bool isPlaying,
    required Duration duration,
  }) = _PlayerState;

  factory PlayerState.initial() => const PlayerState(isPlaying: false, duration: Duration.zero);
}

extension PlayerStateExtension on PlayerState {
  String get avatar => playingSong?.al?.picUrl ?? Assets.icDefaultAvatar.path;

  String get songName => playingSong?.name ?? '';
}
