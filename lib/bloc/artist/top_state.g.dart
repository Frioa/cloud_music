// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TopStateCWProxy {
  TopState topArtistsVm(ViewModel<TopArtistsResponse> topArtistsVm);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TopState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TopState(...).copyWith(id: 12, name: "My name")
  /// ````
  TopState call({
    ViewModel<TopArtistsResponse>? topArtistsVm,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTopState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTopState.copyWith.fieldName(...)`
class _$TopStateCWProxyImpl implements _$TopStateCWProxy {
  final TopState _value;

  const _$TopStateCWProxyImpl(this._value);

  @override
  TopState topArtistsVm(ViewModel<TopArtistsResponse> topArtistsVm) =>
      this(topArtistsVm: topArtistsVm);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TopState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TopState(...).copyWith(id: 12, name: "My name")
  /// ````
  TopState call({
    Object? topArtistsVm = const $CopyWithPlaceholder(),
  }) {
    return TopState(
      topArtistsVm:
          topArtistsVm == const $CopyWithPlaceholder() || topArtistsVm == null
              ? _value.topArtistsVm
              // ignore: cast_nullable_to_non_nullable
              : topArtistsVm as ViewModel<TopArtistsResponse>,
    );
  }
}

extension $TopStateCopyWith on TopState {
  /// Returns a callable class that can be used as follows: `instanceOfTopState.copyWith(...)` or like so:`instanceOfTopState.copyWith.fieldName(...)`.
  _$TopStateCWProxy get copyWith => _$TopStateCWProxyImpl(this);
}
