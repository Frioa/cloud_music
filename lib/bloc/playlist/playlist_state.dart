import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

part 'playlist_state.g.dart';

@CopyWith()
class PlaylistState extends Equatable {
  final ViewModel<PlayDetailResponse> playlistDetailResponse;
  final ViewModel<TrackAllResponse> trackAllResponse;

  const PlaylistState({
    required this.playlistDetailResponse,
    required this.trackAllResponse,
  });

  factory PlaylistState.initial() {
    return PlaylistState(
      playlistDetailResponse: ViewModel.initial(),
      trackAllResponse: ViewModel.initial(),
    );
  }

  @override
  List<Object?> get props => [
        playlistDetailResponse,
        trackAllResponse,
      ];
}
