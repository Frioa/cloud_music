// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecommendStateCWProxy {
  RecommendState recommendSheetResponse(
      ViewModel<RecommendSheetResponse> recommendSheetResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecommendState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecommendState(...).copyWith(id: 12, name: "My name")
  /// ````
  RecommendState call({
    ViewModel<RecommendSheetResponse>? recommendSheetResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecommendState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecommendState.copyWith.fieldName(...)`
class _$RecommendStateCWProxyImpl implements _$RecommendStateCWProxy {
  const _$RecommendStateCWProxyImpl(this._value);

  final RecommendState _value;

  @override
  RecommendState recommendSheetResponse(
          ViewModel<RecommendSheetResponse> recommendSheetResponse) =>
      this(recommendSheetResponse: recommendSheetResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecommendState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecommendState(...).copyWith(id: 12, name: "My name")
  /// ````
  RecommendState call({
    Object? recommendSheetResponse = const $CopyWithPlaceholder(),
  }) {
    return RecommendState(
      recommendSheetResponse:
          recommendSheetResponse == const $CopyWithPlaceholder() ||
                  recommendSheetResponse == null
              // ignore: unnecessary_non_null_assertion
              ? _value.recommendSheetResponse!
              // ignore: cast_nullable_to_non_nullable
              : recommendSheetResponse as ViewModel<RecommendSheetResponse>,
    );
  }
}

extension $RecommendStateCopyWith on RecommendState {
  /// Returns a callable class that can be used as follows: `instanceOfRecommendState.copyWith(...)` or like so:`instanceOfRecommendState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecommendStateCWProxy get copyWith => _$RecommendStateCWProxyImpl(this);
}
