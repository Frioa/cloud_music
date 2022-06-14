import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mv_bloc.freezed.dart';

class MVBloc extends Bloc<MVEvent, MVState> {
  MVBloc() : super(MVState.initial()) {
    on<MVEvent>((event, emit) async {
      // logger.d('PlayerBloc event:$event');
      await event.map(
        requestMVURL: (value) => requestMvUrl(value, emit),
        onSuccessMvUrl: (_) {},
      );
    });
  }

  Future<void> requestMvUrl(_$MVURL value, Emitter<MVState> emit) async {
    final response = await MVClient(dio).mvUrl(value.id);
    emit(state.copyWith(mvUrlVm: ViewModel.response(response)));
    value.onSuccess.call();
  }
}

@freezed
class MVEvent with _$MVEvent {
  const factory MVEvent.requestMVURL(int id, {required VoidCallback onSuccess}) = _$MVURL;

  const factory MVEvent.onSuccessMvUrl() = _$onSuccessMvUrl;
}

@freezed
class MVState with _$MVState {
  const factory MVState({
    ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
  }) = _MVState;

  factory MVState.initial() => MVState(
        mvUrlVm: ViewModel.initial(),
      );
}
