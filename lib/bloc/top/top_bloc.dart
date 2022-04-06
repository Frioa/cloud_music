import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/top/top.dart';
import 'package:cloud_music/common/common.dart';

class TopBloc extends Bloc<BaseTopEvent, TopState> {
  TopBloc() : super(TopState.initial()) {
    on<BaseTopEvent>((event, emit) async {
      logger.d('BaseTopEvent event:$event');
      if (event is RequestTopArtistsEvent) {
        final response = await TopClient(dio).topArtists();
        emit.call(state.copyWith(topArtistsVm: ViewModel.response(response)));
      }
    });
  }
}
