import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

part 'recommend_state.g.dart';

@CopyWith()
class RecommendState extends Equatable {
  final ViewModel<RecommendSheetResponse> recommendSheetResponse;

  const RecommendState({
    required this.recommendSheetResponse,
  });

  factory RecommendState.initial() {
    return RecommendState(
      recommendSheetResponse: ViewModel.initial(),
    );
  }

  @override
  List<Object?> get props => [
    recommendSheetResponse,
  ];
}