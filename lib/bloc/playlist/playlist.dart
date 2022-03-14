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

class RequestTrackAllEvent extends BasePlayListEvent {
  final int id;
  final int? limit;
  final int? offset;

  RequestTrackAllEvent(this.id, {this.limit, this.offset});

  @override
  String toString() {
    return 'RequestTrackAllEvent{id: $id, limit: $limit, offset: $offset}';
  }
}
