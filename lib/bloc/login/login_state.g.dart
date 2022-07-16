// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginStateCWProxy {
  LoginState nestLoginResponse(NestLoginResponse? nestLoginResponse);

  LoginState nestLoginStatusResponse(
      NestLoginStatusResponse? nestLoginStatusResponse);

  LoginState nestUserDetailResponse(
      NestUserDetailResponse? nestUserDetailResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    NestLoginResponse? nestLoginResponse,
    NestLoginStatusResponse? nestLoginStatusResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoginState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoginState.copyWith.fieldName(...)`
class _$LoginStateCWProxyImpl implements _$LoginStateCWProxy {
  final LoginState _value;

  const _$LoginStateCWProxyImpl(this._value);

  @override
  LoginState nestLoginResponse(NestLoginResponse? nestLoginResponse) =>
      this(nestLoginResponse: nestLoginResponse);

  @override
  LoginState nestLoginStatusResponse(
          NestLoginStatusResponse? nestLoginStatusResponse) =>
      this(nestLoginStatusResponse: nestLoginStatusResponse);

  @override
  LoginState nestUserDetailResponse(
          NestUserDetailResponse? nestUserDetailResponse) =>
      this(nestUserDetailResponse: nestUserDetailResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    Object? nestLoginResponse = const $CopyWithPlaceholder(),
    Object? nestLoginStatusResponse = const $CopyWithPlaceholder(),
    Object? nestUserDetailResponse = const $CopyWithPlaceholder(),
  }) {
    return LoginState(
      nestLoginResponse: nestLoginResponse == const $CopyWithPlaceholder()
          ? _value.nestLoginResponse
          // ignore: cast_nullable_to_non_nullable
          : nestLoginResponse as NestLoginResponse?,
      nestLoginStatusResponse:
          nestLoginStatusResponse == const $CopyWithPlaceholder()
              ? _value.nestLoginStatusResponse
              // ignore: cast_nullable_to_non_nullable
              : nestLoginStatusResponse as NestLoginStatusResponse?,
      nestUserDetailResponse:
          nestUserDetailResponse == const $CopyWithPlaceholder()
              ? _value.nestUserDetailResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserDetailResponse as NestUserDetailResponse?,
    );
  }
}

extension $LoginStateCopyWith on LoginState {
  /// Returns a callable class that can be used as follows: `instanceOfLoginState.copyWith(...)` or like so:`instanceOfLoginState.copyWith.fieldName(...)`.
  _$LoginStateCWProxy get copyWith => _$LoginStateCWProxyImpl(this);
}

abstract class _$LoginStateActionCWProxy {
  LoginStateAction action(LoginAction action);

  LoginStateAction nestLoginResponse(NestLoginResponse? nestLoginResponse);

  LoginStateAction nestLoginStatusResponse(
      NestLoginStatusResponse? nestLoginStatusResponse);

  LoginStateAction nestUserDetailResponse(
      NestUserDetailResponse? nestUserDetailResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginStateAction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginStateAction(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginStateAction call({
    LoginAction? action,
    NestLoginResponse? nestLoginResponse,
    NestLoginStatusResponse? nestLoginStatusResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoginStateAction.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoginStateAction.copyWith.fieldName(...)`
class _$LoginStateActionCWProxyImpl implements _$LoginStateActionCWProxy {
  final LoginStateAction _value;

  const _$LoginStateActionCWProxyImpl(this._value);

  @override
  LoginStateAction action(LoginAction action) => this(action: action);

  @override
  LoginStateAction nestLoginResponse(NestLoginResponse? nestLoginResponse) =>
      this(nestLoginResponse: nestLoginResponse);

  @override
  LoginStateAction nestLoginStatusResponse(
          NestLoginStatusResponse? nestLoginStatusResponse) =>
      this(nestLoginStatusResponse: nestLoginStatusResponse);

  @override
  LoginStateAction nestUserDetailResponse(
          NestUserDetailResponse? nestUserDetailResponse) =>
      this(nestUserDetailResponse: nestUserDetailResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginStateAction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginStateAction(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginStateAction call({
    Object? action = const $CopyWithPlaceholder(),
    Object? nestLoginResponse = const $CopyWithPlaceholder(),
    Object? nestLoginStatusResponse = const $CopyWithPlaceholder(),
    Object? nestUserDetailResponse = const $CopyWithPlaceholder(),
  }) {
    return LoginStateAction(
      action: action == const $CopyWithPlaceholder() || action == null
          ? _value.action
          // ignore: cast_nullable_to_non_nullable
          : action as LoginAction,
      nestLoginResponse: nestLoginResponse == const $CopyWithPlaceholder()
          ? _value.nestLoginResponse
          // ignore: cast_nullable_to_non_nullable
          : nestLoginResponse as NestLoginResponse?,
      nestLoginStatusResponse:
          nestLoginStatusResponse == const $CopyWithPlaceholder()
              ? _value.nestLoginStatusResponse
              // ignore: cast_nullable_to_non_nullable
              : nestLoginStatusResponse as NestLoginStatusResponse?,
      nestUserDetailResponse:
          nestUserDetailResponse == const $CopyWithPlaceholder()
              ? _value.nestUserDetailResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserDetailResponse as NestUserDetailResponse?,
    );
  }
}

extension $LoginStateActionCopyWith on LoginStateAction {
  /// Returns a callable class that can be used as follows: `instanceOfLoginStateAction.copyWith(...)` or like so:`instanceOfLoginStateAction.copyWith.fieldName(...)`.
  _$LoginStateActionCWProxy get copyWith => _$LoginStateActionCWProxyImpl(this);
}
