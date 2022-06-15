import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

part 'top_state.g.dart';

abstract class BaseTopEvent {}

class RequestTopArtistsEvent extends BaseTopEvent{}

@CopyWith()
class TopState extends Equatable {
  final ViewModel<TopArtistsResponse> topArtistsVm;

  const TopState({required this.topArtistsVm});

  factory TopState.initial() {
    return TopState(
      topArtistsVm: ViewModel.initial(),
    );
  }

  @override
  List<Object?> get props => [
        topArtistsVm,
      ];
}
