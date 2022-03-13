import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

class PlaylistBloc extends Bloc<BasePlayListEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    on<BasePlayListEvent>((event, emit) async {
      logger.d('PlaylistBloc event:$event');

      if (event is RequestPlaylistDetailEvent) {
        final value = await PlaylistClient(dio).playlist(event.id);
        emit.call(state.copyWith(playlistDetailResponse: ViewModel.response(value)));
        return;
      }
    });
  }
}
