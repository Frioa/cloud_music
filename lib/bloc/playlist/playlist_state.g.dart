// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaylistStateCWProxy {
  PlaylistState playlistDetailResponse(
      ViewModel<PlayDetailResponse> playlistDetailResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistState call({
    ViewModel<PlayDetailResponse>? playlistDetailResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaylistState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaylistState.copyWith.fieldName(...)`
class _$PlaylistStateCWProxyImpl implements _$PlaylistStateCWProxy {
  final PlaylistState _value;

  const _$PlaylistStateCWProxyImpl(this._value);

  @override
  PlaylistState playlistDetailResponse(
          ViewModel<PlayDetailResponse> playlistDetailResponse) =>
      this(playlistDetailResponse: playlistDetailResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistState call({
    Object? playlistDetailResponse = const $CopyWithPlaceholder(),
  }) {
    return PlaylistState(
      playlistDetailResponse:
          playlistDetailResponse == const $CopyWithPlaceholder() ||
                  playlistDetailResponse == null
              ? _value.playlistDetailResponse
              // ignore: cast_nullable_to_non_nullable
              : playlistDetailResponse as ViewModel<PlayDetailResponse>,
    );
  }
}

extension $PlaylistStateCopyWith on PlaylistState {
  /// Returns a callable class that can be used as follows: `instanceOfclass PlaylistState extends Equatable.name.copyWith(...)` or like so:`instanceOfclass PlaylistState extends Equatable.name.copyWith.fieldName(...)`.
  _$PlaylistStateCWProxy get copyWith => _$PlaylistStateCWProxyImpl(this);
}
