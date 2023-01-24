// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppStateCWProxy {
  AppState theme(ThemeData theme);

  AppState nestLoginResponse(NestLoginResponse nestLoginResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ````
  AppState call({
    ThemeData? theme,
    NestLoginResponse? nestLoginResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppState.copyWith.fieldName(...)`
class _$AppStateCWProxyImpl implements _$AppStateCWProxy {
  const _$AppStateCWProxyImpl(this._value);

  final AppState _value;

  @override
  AppState theme(ThemeData theme) => this(theme: theme);

  @override
  AppState nestLoginResponse(NestLoginResponse nestLoginResponse) =>
      this(nestLoginResponse: nestLoginResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ````
  AppState call({
    Object? theme = const $CopyWithPlaceholder(),
    Object? nestLoginResponse = const $CopyWithPlaceholder(),
  }) {
    return AppState(
      theme: theme == const $CopyWithPlaceholder() || theme == null
          // ignore: unnecessary_non_null_assertion
          ? _value.theme!
          // ignore: cast_nullable_to_non_nullable
          : theme as ThemeData,
      nestLoginResponse: nestLoginResponse == const $CopyWithPlaceholder() ||
              nestLoginResponse == null
          // ignore: unnecessary_non_null_assertion
          ? _value.nestLoginResponse!
          // ignore: cast_nullable_to_non_nullable
          : nestLoginResponse as NestLoginResponse,
    );
  }
}

extension $AppStateCopyWith on AppState {
  /// Returns a callable class that can be used as follows: `instanceOfAppState.copyWith(...)` or like so:`instanceOfAppState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppStateCWProxy get copyWith => _$AppStateCWProxyImpl(this);
}
