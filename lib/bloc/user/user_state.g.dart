// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserStateCWProxy {
  UserState nestUserAccountResponse(
      NestUserAccountResponse? nestUserAccountResponse);

  UserState nestUserDetailResponse(
      NestUserDetailResponse? nestUserDetailResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserState(...).copyWith(id: 12, name: "My name")
  /// ````
  UserState call({
    NestUserAccountResponse? nestUserAccountResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserState.copyWith.fieldName(...)`
class _$UserStateCWProxyImpl implements _$UserStateCWProxy {
  final UserState _value;

  const _$UserStateCWProxyImpl(this._value);

  @override
  UserState nestUserAccountResponse(
          NestUserAccountResponse? nestUserAccountResponse) =>
      this(nestUserAccountResponse: nestUserAccountResponse);

  @override
  UserState nestUserDetailResponse(
          NestUserDetailResponse? nestUserDetailResponse) =>
      this(nestUserDetailResponse: nestUserDetailResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserState(...).copyWith(id: 12, name: "My name")
  /// ````
  UserState call({
    Object? nestUserAccountResponse = const $CopyWithPlaceholder(),
    Object? nestUserDetailResponse = const $CopyWithPlaceholder(),
  }) {
    return UserState(
      nestUserAccountResponse:
          nestUserAccountResponse == const $CopyWithPlaceholder()
              ? _value.nestUserAccountResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserAccountResponse as NestUserAccountResponse?,
      nestUserDetailResponse:
          nestUserDetailResponse == const $CopyWithPlaceholder()
              ? _value.nestUserDetailResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserDetailResponse as NestUserDetailResponse?,
    );
  }
}

extension $UserStateCopyWith on UserState {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserState extends Equatable.name.copyWith(...)` or like so:`instanceOfclass UserState extends Equatable.name.copyWith.fieldName(...)`.
  _$UserStateCWProxy get copyWith => _$UserStateCWProxyImpl(this);
}

abstract class _$UserStateActionCWProxy {
  UserStateAction action(UserAction action);

  UserStateAction nestUserAccountResponse(
      NestUserAccountResponse? nestUserAccountResponse);

  UserStateAction nestUserDetailResponse(
      NestUserDetailResponse? nestUserDetailResponse);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserStateAction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserStateAction(...).copyWith(id: 12, name: "My name")
  /// ````
  UserStateAction call({
    UserAction? action,
    NestUserAccountResponse? nestUserAccountResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserStateAction.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserStateAction.copyWith.fieldName(...)`
class _$UserStateActionCWProxyImpl implements _$UserStateActionCWProxy {
  final UserStateAction _value;

  const _$UserStateActionCWProxyImpl(this._value);

  @override
  UserStateAction action(UserAction action) => this(action: action);

  @override
  UserStateAction nestUserAccountResponse(
          NestUserAccountResponse? nestUserAccountResponse) =>
      this(nestUserAccountResponse: nestUserAccountResponse);

  @override
  UserStateAction nestUserDetailResponse(
          NestUserDetailResponse? nestUserDetailResponse) =>
      this(nestUserDetailResponse: nestUserDetailResponse);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserStateAction(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserStateAction(...).copyWith(id: 12, name: "My name")
  /// ````
  UserStateAction call({
    Object? action = const $CopyWithPlaceholder(),
    Object? nestUserAccountResponse = const $CopyWithPlaceholder(),
    Object? nestUserDetailResponse = const $CopyWithPlaceholder(),
  }) {
    return UserStateAction(
      action: action == const $CopyWithPlaceholder() || action == null
          ? _value.action
          // ignore: cast_nullable_to_non_nullable
          : action as UserAction,
      nestUserAccountResponse:
          nestUserAccountResponse == const $CopyWithPlaceholder()
              ? _value.nestUserAccountResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserAccountResponse as NestUserAccountResponse?,
      nestUserDetailResponse:
          nestUserDetailResponse == const $CopyWithPlaceholder()
              ? _value.nestUserDetailResponse
              // ignore: cast_nullable_to_non_nullable
              : nestUserDetailResponse as NestUserDetailResponse?,
    );
  }
}

extension $UserStateActionCopyWith on UserStateAction {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserStateAction extends UserState.name.copyWith(...)` or like so:`instanceOfclass UserStateAction extends UserState.name.copyWith.fieldName(...)`.
  _$UserStateActionCWProxy get copyWith => _$UserStateActionCWProxyImpl(this);
}
