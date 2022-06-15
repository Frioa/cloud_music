import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mv_bloc.freezed.dart';

class MVBloc extends Bloc<MVEvent, MVState> {
  MVBloc() : super(MVState.initial()) {
    on<MVEvent>((event, emit) async {
      await event.map(
        requestMVURL: (value) => requestMvUrl(value, emit),
        requestDetail: (value) => requestMvDetail(value, emit),
      );
    });
  }

  Future<void> requestMvUrl(_$MVURL value, Emitter<MVState> emit) async {
    final response = await MVClient(dio).mvUrl(value.id);
    emit.call(state.copyWith(mvUrlVm: ViewModel.response(response)));
    value.onSuccess.call();
  }

  Future<void> requestMvDetail(_$requestDetail value, Emitter<MVState> emit) async {
    await MVClient(dio).mvDetail(value.mvId).then((detail) async {
      final info = await MVClient(dio).mvDetailInfo(value.mvId);
      final newDetail = detail.copyWith(
        data: detail.data.copyWith(likedCount: info.likedCount, liked: info.liked),
      );

      final newState = state.copyWith(mvDetailVM: ViewModel.response(newDetail));
      emit.call(newState);
    }).catchError((_) {
      final newState = state.copyWith(mvDetailVM: ViewModel.error(_));
      emit.call(newState);
    });
  }
}

@freezed
class MVEvent with _$MVEvent {
  const factory MVEvent.requestMVURL(int id, {required VoidCallback onSuccess}) = _$MVURL;

  const factory MVEvent.requestDetail(int mvId) = _$requestDetail;
}

@freezed
class MVState with _$MVState {
  const factory MVState({
    ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
    ViewModel<DataWrapResponse<MvDetailResponse>>? mvDetailVM,
  }) = _MVState;

  factory MVState.initial() => MVState(
        mvUrlVm: ViewModel.initial(),
        mvDetailVM: ViewModel.initial(),
      );
}
