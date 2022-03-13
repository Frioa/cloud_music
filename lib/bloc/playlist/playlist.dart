export 'playlist_bloc.dart';
export 'playlist_state.dart';

abstract class BasePlayListEvent {}

class RequestPlaylistDetailEvent extends BasePlayListEvent {
  final int id;

  RequestPlaylistDetailEvent(this.id);

  @override
  String toString() {
    return 'RequestPlaylistDetailEvent{id: $id}';
  }
}
