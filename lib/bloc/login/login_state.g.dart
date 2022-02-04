// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginStateCWProxy {
  LoginState nestLoginResponse(NestLoginResponse nestLoginResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    NestLoginResponse? nestLoginResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoginState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoginState.copyWith.fieldName(...)`
class _$LoginStateCWProxyImpl implements _$LoginStateCWProxy {
  final LoginState _value;

  const _$LoginStateCWProxyImpl(this._value);

  @override
  LoginState nestLoginResponse(NestLoginResponse nestLoginResponse) =>
      this(nestLoginResponse: nestLoginResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    Object? nestLoginResponse = const $CopyWithPlaceholder(),
  }) {
    return LoginState(
      nestLoginResponse: nestLoginResponse == const $CopyWithPlaceholder() ||
              nestLoginResponse == null
          ? _value.nestLoginResponse
          // ignore: cast_nullable_to_non_nullable
          : nestLoginResponse as NestLoginResponse,
    );
  }
}

extension $LoginStateCopyWith on LoginState {
  /// Returns a callable class that can be used as follows: `instanceOfclass LoginState extends Equatable.name.copyWith(...)` or like so:`instanceOfclass LoginState extends Equatable.name.copyWith.fieldName(...)`.
  _$LoginStateCWProxy get copyWith => _$LoginStateCWProxyImpl(this);
}
