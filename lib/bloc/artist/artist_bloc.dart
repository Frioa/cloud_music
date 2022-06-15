import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/artists/artists.dart';
import 'package:cloud_music/network/aritst/artist_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_bloc.freezed.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  ArtistBloc() : super(ArtistState.initial()) {
    on<ArtistEvent>((event, emit) async {
      await event.map(
        requestArtistsDetail: (_$requestArtistsDetail value) async {
          await ArtistClient(dio).artistsDetail(value.id).then((response) {
            final newState = state.copyWith(artistDetailVM: ViewModel.response(response));
            emit.call(newState);
          }).catchError((_) {
            final newState = state.copyWith(artistDetailVM: ViewModel.error(null));
            emit.call(newState);
          });
        },
      );
    });
  }
}

@freezed
class ArtistEvent with _$ArtistEvent {
  const factory ArtistEvent.requestArtistsDetail(int id) = _$requestArtistsDetail;
}

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState({
    required ViewModel<DataWrapResponse<ArtistsDetailResponse>> artistDetailVM,
  }) = _ArtistState;

  factory ArtistState.initial() => ArtistState(artistDetailVM: ViewModel.initial());
}
