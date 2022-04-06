export 'recommend_bloc.dart';
export 'recommend_state.dart';

import 'package:cloud_music/model/recommend/sheet.dart';

abstract class BaseRecommendEvent {}

class RequestRecommendSheetEvent extends BaseRecommendEvent {
}

class RecommendSheetEvent extends BaseRecommendEvent {

  final RecommendSheetResponse recommendSheetResponse;

  RecommendSheetEvent(this.recommendSheetResponse);
}