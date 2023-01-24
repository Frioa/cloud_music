// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaylistStateCWProxy {
  PlaylistState playlistDetailResponse(
      ViewModel<PlayDetailResponse> playlistDetailResponse);

  PlaylistState trackAllResponse(ViewModel<TrackAllResponse> trackAllResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistState call({
    ViewModel<PlayDetailResponse>? playlistDetailResponse,
    ViewModel<TrackAllResponse>? trackAllResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaylistState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaylistState.copyWith.fieldName(...)`
class _$PlaylistStateCWProxyImpl implements _$PlaylistStateCWProxy {
  const _$PlaylistStateCWProxyImpl(this._value);

  final PlaylistState _value;

  @override
  PlaylistState playlistDetailResponse(
          ViewModel<PlayDetailResponse> playlistDetailResponse) =>
      this(playlistDetailResponse: playlistDetailResponse);

  @override
  PlaylistState trackAllResponse(
          ViewModel<TrackAllResponse> trackAllResponse) =>
      this(trackAllResponse: trackAllResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaylistState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaylistState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaylistState call({
    Object? playlistDetailResponse = const $CopyWithPlaceholder(),
    Object? trackAllResponse = const $CopyWithPlaceholder(),
  }) {
    return PlaylistState(
      playlistDetailResponse:
          playlistDetailResponse == const $CopyWithPlaceholder() ||
                  playlistDetailResponse == null
              // ignore: unnecessary_non_null_assertion
              ? _value.playlistDetailResponse!
              // ignore: cast_nullable_to_non_nullable
              : playlistDetailResponse as ViewModel<PlayDetailResponse>,
      trackAllResponse: trackAllResponse == const $CopyWithPlaceholder() ||
              trackAllResponse == null
          // ignore: unnecessary_non_null_assertion
          ? _value.trackAllResponse!
          // ignore: cast_nullable_to_non_nullable
          : trackAllResponse as ViewModel<TrackAllResponse>,
    );
  }
}

extension $PlaylistStateCopyWith on PlaylistState {
  /// Returns a callable class that can be used as follows: `instanceOfPlaylistState.copyWith(...)` or like so:`instanceOfPlaylistState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaylistStateCWProxy get copyWith => _$PlaylistStateCWProxyImpl(this);
}
