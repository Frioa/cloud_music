import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

part 'playlist_state.g.dart';

@CopyWith()
class PlaylistState extends Equatable {
  final ViewModel<PlayDetailResponse> playlistDetailResponse;

  const PlaylistState({
    required this.playlistDetailResponse,
  });

  factory PlaylistState.initial() {
    return PlaylistState(
      playlistDetailResponse: ViewModel.initial(),
    );

  }

  @override
  List<Object?> get props => [playlistDetailResponse];
}
