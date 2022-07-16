// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppStateCWProxy {
  AppState nestLoginResponse(NestLoginResponse nestLoginResponse);

  AppState theme(ThemeData theme);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ````
  AppState call({
    NestLoginResponse? nestLoginResponse,
    ThemeData? theme,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppState.copyWith.fieldName(...)`
class _$AppStateCWProxyImpl implements _$AppStateCWProxy {
  final AppState _value;

  const _$AppStateCWProxyImpl(this._value);

  @override
  AppState nestLoginResponse(NestLoginResponse nestLoginResponse) =>
      this(nestLoginResponse: nestLoginResponse);

  @override
  AppState theme(ThemeData theme) => this(theme: theme);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ````
  AppState call({
    Object? nestLoginResponse = const $CopyWithPlaceholder(),
    Object? theme = const $CopyWithPlaceholder(),
  }) {
    return AppState(
      nestLoginResponse: nestLoginResponse == const $CopyWithPlaceholder() ||
              nestLoginResponse == null
          ? _value.nestLoginResponse
          // ignore: cast_nullable_to_non_nullable
          : nestLoginResponse as NestLoginResponse,
      theme: theme == const $CopyWithPlaceholder() || theme == null
          ? _value.theme
          // ignore: cast_nullable_to_non_nullable
          : theme as ThemeData,
    );
  }
}

extension $AppStateCopyWith on AppState {
  /// Returns a callable class that can be used as follows: `instanceOfAppState.copyWith(...)` or like so:`instanceOfAppState.copyWith.fieldName(...)`.
  _$AppStateCWProxy get copyWith => _$AppStateCWProxyImpl(this);
}
