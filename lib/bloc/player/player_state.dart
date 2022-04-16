import 'package:cloud_music/common/common.dart';

part 'player_state.g.dart';

abstract class BasePlayerEvent {}

class UpdatePlayerSong extends BasePlayerEvent {
  final Song? song;

  UpdatePlayerSong({this.song});

  @override
  String toString() {
    return 'UpdatePlayerSong{song: $song}';
  }
}

class UpdateSongDetail extends BasePlayerEvent {
  final SongDetail? songDetail;

  UpdateSongDetail({this.songDetail});
}

class UpdatePlayer extends BasePlayerEvent {
  final bool isPlaying;

  UpdatePlayer(this.isPlaying);
}

class UpdateDuration extends BasePlayerEvent {
  final Duration duration;

  UpdateDuration(this.duration);
}

@CopyWith(copyWithNull: true)
class PlayerState extends Equatable {
  final Song? playingSong;

  // @CopyWithField(immutable: true)
  final SongDetail? songDetail;

  final bool isPlaying;

  final Duration duration;

  const PlayerState({
    this.playingSong,
    this.songDetail,
    this.isPlaying = false,
    this.duration = Duration.zero,
  });

  String get avatar => playingSong?.al?.picUrl ?? Assets.icDefaultAvatar.path;

  String get songName => playingSong?.name ?? '';

  factory PlayerState.initial() {
    return const PlayerState();
  }

  @override
  List<Object?> get props => [
        playingSong,
        songDetail,
        isPlaying,
        duration,
      ];
}
