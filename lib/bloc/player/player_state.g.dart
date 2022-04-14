// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlayerStateCWProxy {
  PlayerState playingSong(Song? playingSong);

  PlayerState songDetail(SongDetail? songDetail);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayerState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayerState call({
    Song? playingSong,
    SongDetail? songDetail,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlayerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlayerState.copyWith.fieldName(...)`
class _$PlayerStateCWProxyImpl implements _$PlayerStateCWProxy {
  final PlayerState _value;

  const _$PlayerStateCWProxyImpl(this._value);

  @override
  PlayerState playingSong(Song? playingSong) => this(playingSong: playingSong);

  @override
  PlayerState songDetail(SongDetail? songDetail) =>
      this(songDetail: songDetail);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlayerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayerState(...).copyWith(id: 12, name: "My name")
  /// ````
  PlayerState call({
    Object? playingSong = const $CopyWithPlaceholder(),
    Object? songDetail = const $CopyWithPlaceholder(),
  }) {
    return PlayerState(
      playingSong: playingSong == const $CopyWithPlaceholder()
          ? _value.playingSong
          // ignore: cast_nullable_to_non_nullable
          : playingSong as Song?,
      songDetail: songDetail == const $CopyWithPlaceholder()
          ? _value.songDetail
          // ignore: cast_nullable_to_non_nullable
          : songDetail as SongDetail?,
    );
  }
}

extension $PlayerStateCopyWith on PlayerState {
  /// Returns a callable class that can be used as follows: `instanceOfclass PlayerState extends Equatable.name.copyWith(...)` or like so:`instanceOfclass PlayerState extends Equatable.name.copyWith.fieldName(...)`.
  _$PlayerStateCWProxy get copyWith => _$PlayerStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `PlayerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlayerState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  PlayerState copyWithNull({
    bool playingSong = false,
    bool songDetail = false,
  }) {
    return PlayerState(
      playingSong: playingSong == true ? null : this.playingSong,
      songDetail: songDetail == true ? null : this.songDetail,
    );
  }
}
