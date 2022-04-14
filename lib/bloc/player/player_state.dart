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

@CopyWith(copyWithNull: true)
class PlayerState extends Equatable {
  final Song? playingSong;

  // @CopyWithField(immutable: true)
  final SongDetail? songDetail;

  const PlayerState({this.playingSong, this.songDetail});

  factory PlayerState.initial() {
    return const PlayerState();
  }

  @override
  List<Object?> get props => [
        playingSong,
        songDetail,
      ];
}
