import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/recommend/recommend_state.dart';
import 'package:cloud_music/common/common.dart';

class RecommendBloc extends Bloc<BaseRecommendEvent, RecommendState> {
  RecommendBloc() : super(RecommendState.initial()) {
    on<BaseRecommendEvent>((event, emit) async {
      logger.d('RecommendBloc event:$event');

      if (event is RequestRecommendSheetEvent) {
        final value = await SearchClient(dio).recommendResource();
        emit.call(state.copyWith(recommendSheetResponse: ViewModel.response(value)));

        return;
      }

      if (event is RecommendSheetEvent) {
        emit.call(state.copyWith(
            recommendSheetResponse: ViewModel.response(event.recommendSheetResponse)));
        return;
      }
    });
  }
}
