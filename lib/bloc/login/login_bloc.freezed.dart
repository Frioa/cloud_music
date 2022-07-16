// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  VoidCallback? get onSuccess => throw _privateConstructorUsedError;
  VoidCallback? get onError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)
        sendCaptcha,
    required TResult Function(String phone, String captcha,
            VoidCallback? onSuccess, VoidCallback? onError)
        cellphone,
    required TResult Function(VoidCallback? onSuccess, VoidCallback? onError)
        loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($sendCaptcha value) sendCaptcha,
    required TResult Function($cellphone value) cellphone,
    required TResult Function($loginStatus value) loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({VoidCallback? onSuccess, VoidCallback? onError});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_value.copyWith(
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc
abstract class _$$$sendCaptchaCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$$sendCaptchaCopyWith(
          _$$sendCaptcha value, $Res Function(_$$sendCaptcha) then) =
      __$$$sendCaptchaCopyWithImpl<$Res>;
  @override
  $Res call({String phone, VoidCallback? onSuccess, VoidCallback? onError});
}

/// @nodoc
class __$$$sendCaptchaCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$$sendCaptchaCopyWith<$Res> {
  __$$$sendCaptchaCopyWithImpl(
      _$$sendCaptcha _value, $Res Function(_$$sendCaptcha) _then)
      : super(_value, (v) => _then(v as _$$sendCaptcha));

  @override
  _$$sendCaptcha get _value => super._value as _$$sendCaptcha;

  @override
  $Res call({
    Object? phone = freezed,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$$sendCaptcha(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$$sendCaptcha implements $sendCaptcha {
  const _$$sendCaptcha(this.phone, {this.onSuccess, this.onError});

  @override
  final String phone;
  @override
  final VoidCallback? onSuccess;
  @override
  final VoidCallback? onError;

  @override
  String toString() {
    return 'LoginEvent.sendCaptcha(phone: $phone, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$sendCaptcha &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(phone), onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  _$$$sendCaptchaCopyWith<_$$sendCaptcha> get copyWith =>
      __$$$sendCaptchaCopyWithImpl<_$$sendCaptcha>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)
        sendCaptcha,
    required TResult Function(String phone, String captcha,
            VoidCallback? onSuccess, VoidCallback? onError)
        cellphone,
    required TResult Function(VoidCallback? onSuccess, VoidCallback? onError)
        loginStatus,
  }) {
    return sendCaptcha(phone, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
  }) {
    return sendCaptcha?.call(phone, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
    required TResult orElse(),
  }) {
    if (sendCaptcha != null) {
      return sendCaptcha(phone, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($sendCaptcha value) sendCaptcha,
    required TResult Function($cellphone value) cellphone,
    required TResult Function($loginStatus value) loginStatus,
  }) {
    return sendCaptcha(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
  }) {
    return sendCaptcha?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (sendCaptcha != null) {
      return sendCaptcha(this);
    }
    return orElse();
  }
}

abstract class $sendCaptcha implements LoginEvent {
  const factory $sendCaptcha(final String phone,
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$$sendCaptcha;

  String get phone;
  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$$sendCaptchaCopyWith<_$$sendCaptcha> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$cellphoneCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$$cellphoneCopyWith(
          _$$cellphone value, $Res Function(_$$cellphone) then) =
      __$$$cellphoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phone,
      String captcha,
      VoidCallback? onSuccess,
      VoidCallback? onError});
}

/// @nodoc
class __$$$cellphoneCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$$cellphoneCopyWith<$Res> {
  __$$$cellphoneCopyWithImpl(
      _$$cellphone _value, $Res Function(_$$cellphone) _then)
      : super(_value, (v) => _then(v as _$$cellphone));

  @override
  _$$cellphone get _value => super._value as _$$cellphone;

  @override
  $Res call({
    Object? phone = freezed,
    Object? captcha = freezed,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$$cellphone(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      captcha == freezed
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$$cellphone implements $cellphone {
  const _$$cellphone(this.phone, this.captcha, {this.onSuccess, this.onError});

  @override
  final String phone;
  @override
  final String captcha;
  @override
  final VoidCallback? onSuccess;
  @override
  final VoidCallback? onError;

  @override
  String toString() {
    return 'LoginEvent.cellphone(phone: $phone, captcha: $captcha, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$cellphone &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.captcha, captcha) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(captcha),
      onSuccess,
      onError);

  @JsonKey(ignore: true)
  @override
  _$$$cellphoneCopyWith<_$$cellphone> get copyWith =>
      __$$$cellphoneCopyWithImpl<_$$cellphone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)
        sendCaptcha,
    required TResult Function(String phone, String captcha,
            VoidCallback? onSuccess, VoidCallback? onError)
        cellphone,
    required TResult Function(VoidCallback? onSuccess, VoidCallback? onError)
        loginStatus,
  }) {
    return cellphone(phone, captcha, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
  }) {
    return cellphone?.call(phone, captcha, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
    required TResult orElse(),
  }) {
    if (cellphone != null) {
      return cellphone(phone, captcha, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($sendCaptcha value) sendCaptcha,
    required TResult Function($cellphone value) cellphone,
    required TResult Function($loginStatus value) loginStatus,
  }) {
    return cellphone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
  }) {
    return cellphone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (cellphone != null) {
      return cellphone(this);
    }
    return orElse();
  }
}

abstract class $cellphone implements LoginEvent {
  const factory $cellphone(final String phone, final String captcha,
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$$cellphone;

  String get phone;
  String get captcha;
  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$$cellphoneCopyWith<_$$cellphone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$loginStatusCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$$loginStatusCopyWith(
          _$$loginStatus value, $Res Function(_$$loginStatus) then) =
      __$$$loginStatusCopyWithImpl<$Res>;
  @override
  $Res call({VoidCallback? onSuccess, VoidCallback? onError});
}

/// @nodoc
class __$$$loginStatusCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$$loginStatusCopyWith<$Res> {
  __$$$loginStatusCopyWithImpl(
      _$$loginStatus _value, $Res Function(_$$loginStatus) _then)
      : super(_value, (v) => _then(v as _$$loginStatus));

  @override
  _$$loginStatus get _value => super._value as _$$loginStatus;

  @override
  $Res call({
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$$loginStatus(
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$$loginStatus implements $loginStatus {
  const _$$loginStatus({this.onSuccess, this.onError});

  @override
  final VoidCallback? onSuccess;
  @override
  final VoidCallback? onError;

  @override
  String toString() {
    return 'LoginEvent.loginStatus(onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$loginStatus &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  _$$$loginStatusCopyWith<_$$loginStatus> get copyWith =>
      __$$$loginStatusCopyWithImpl<_$$loginStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)
        sendCaptcha,
    required TResult Function(String phone, String captcha,
            VoidCallback? onSuccess, VoidCallback? onError)
        cellphone,
    required TResult Function(VoidCallback? onSuccess, VoidCallback? onError)
        loginStatus,
  }) {
    return loginStatus(onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
  }) {
    return loginStatus?.call(onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String phone, VoidCallback? onSuccess, VoidCallback? onError)?
        sendCaptcha,
    TResult Function(String phone, String captcha, VoidCallback? onSuccess,
            VoidCallback? onError)?
        cellphone,
    TResult Function(VoidCallback? onSuccess, VoidCallback? onError)?
        loginStatus,
    required TResult orElse(),
  }) {
    if (loginStatus != null) {
      return loginStatus(onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($sendCaptcha value) sendCaptcha,
    required TResult Function($cellphone value) cellphone,
    required TResult Function($loginStatus value) loginStatus,
  }) {
    return loginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
  }) {
    return loginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($sendCaptcha value)? sendCaptcha,
    TResult Function($cellphone value)? cellphone,
    TResult Function($loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (loginStatus != null) {
      return loginStatus(this);
    }
    return orElse();
  }
}

abstract class $loginStatus implements LoginEvent {
  const factory $loginStatus(
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$$loginStatus;

  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$$loginStatusCopyWith<_$$loginStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginNewState {
  ViewModel<VerifyNestCaptchaResponse>? get sentCaptchaVm =>
      throw _privateConstructorUsedError;
  ViewModel<NestLoginResponse>? get nestPhoneLoginVm =>
      throw _privateConstructorUsedError;
  ViewModel<DataWrapResponse<NestLoginStatusResponse>>? get loginStatusVm =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginNewStateCopyWith<LoginNewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginNewStateCopyWith<$Res> {
  factory $LoginNewStateCopyWith(
          LoginNewState value, $Res Function(LoginNewState) then) =
      _$LoginNewStateCopyWithImpl<$Res>;
  $Res call(
      {ViewModel<VerifyNestCaptchaResponse>? sentCaptchaVm,
      ViewModel<NestLoginResponse>? nestPhoneLoginVm,
      ViewModel<DataWrapResponse<NestLoginStatusResponse>>? loginStatusVm});
}

/// @nodoc
class _$LoginNewStateCopyWithImpl<$Res>
    implements $LoginNewStateCopyWith<$Res> {
  _$LoginNewStateCopyWithImpl(this._value, this._then);

  final LoginNewState _value;
  // ignore: unused_field
  final $Res Function(LoginNewState) _then;

  @override
  $Res call({
    Object? sentCaptchaVm = freezed,
    Object? nestPhoneLoginVm = freezed,
    Object? loginStatusVm = freezed,
  }) {
    return _then(_value.copyWith(
      sentCaptchaVm: sentCaptchaVm == freezed
          ? _value.sentCaptchaVm
          : sentCaptchaVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<VerifyNestCaptchaResponse>?,
      nestPhoneLoginVm: nestPhoneLoginVm == freezed
          ? _value.nestPhoneLoginVm
          : nestPhoneLoginVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<NestLoginResponse>?,
      loginStatusVm: loginStatusVm == freezed
          ? _value.loginStatusVm
          : loginStatusVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<NestLoginStatusResponse>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginNewStateCopyWith<$Res>
    implements $LoginNewStateCopyWith<$Res> {
  factory _$$_LoginNewStateCopyWith(
          _$_LoginNewState value, $Res Function(_$_LoginNewState) then) =
      __$$_LoginNewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ViewModel<VerifyNestCaptchaResponse>? sentCaptchaVm,
      ViewModel<NestLoginResponse>? nestPhoneLoginVm,
      ViewModel<DataWrapResponse<NestLoginStatusResponse>>? loginStatusVm});
}

/// @nodoc
class __$$_LoginNewStateCopyWithImpl<$Res>
    extends _$LoginNewStateCopyWithImpl<$Res>
    implements _$$_LoginNewStateCopyWith<$Res> {
  __$$_LoginNewStateCopyWithImpl(
      _$_LoginNewState _value, $Res Function(_$_LoginNewState) _then)
      : super(_value, (v) => _then(v as _$_LoginNewState));

  @override
  _$_LoginNewState get _value => super._value as _$_LoginNewState;

  @override
  $Res call({
    Object? sentCaptchaVm = freezed,
    Object? nestPhoneLoginVm = freezed,
    Object? loginStatusVm = freezed,
  }) {
    return _then(_$_LoginNewState(
      sentCaptchaVm: sentCaptchaVm == freezed
          ? _value.sentCaptchaVm
          : sentCaptchaVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<VerifyNestCaptchaResponse>?,
      nestPhoneLoginVm: nestPhoneLoginVm == freezed
          ? _value.nestPhoneLoginVm
          : nestPhoneLoginVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<NestLoginResponse>?,
      loginStatusVm: loginStatusVm == freezed
          ? _value.loginStatusVm
          : loginStatusVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<NestLoginStatusResponse>>?,
    ));
  }
}

/// @nodoc

class _$_LoginNewState implements _LoginNewState {
  const _$_LoginNewState(
      {this.sentCaptchaVm, this.nestPhoneLoginVm, this.loginStatusVm});

  @override
  final ViewModel<VerifyNestCaptchaResponse>? sentCaptchaVm;
  @override
  final ViewModel<NestLoginResponse>? nestPhoneLoginVm;
  @override
  final ViewModel<DataWrapResponse<NestLoginStatusResponse>>? loginStatusVm;

  @override
  String toString() {
    return 'LoginNewState(sentCaptchaVm: $sentCaptchaVm, nestPhoneLoginVm: $nestPhoneLoginVm, loginStatusVm: $loginStatusVm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginNewState &&
            const DeepCollectionEquality()
                .equals(other.sentCaptchaVm, sentCaptchaVm) &&
            const DeepCollectionEquality()
                .equals(other.nestPhoneLoginVm, nestPhoneLoginVm) &&
            const DeepCollectionEquality()
                .equals(other.loginStatusVm, loginStatusVm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sentCaptchaVm),
      const DeepCollectionEquality().hash(nestPhoneLoginVm),
      const DeepCollectionEquality().hash(loginStatusVm));

  @JsonKey(ignore: true)
  @override
  _$$_LoginNewStateCopyWith<_$_LoginNewState> get copyWith =>
      __$$_LoginNewStateCopyWithImpl<_$_LoginNewState>(this, _$identity);
}

abstract class _LoginNewState implements LoginNewState {
  const factory _LoginNewState(
      {final ViewModel<VerifyNestCaptchaResponse>? sentCaptchaVm,
      final ViewModel<NestLoginResponse>? nestPhoneLoginVm,
      final ViewModel<DataWrapResponse<NestLoginStatusResponse>>?
          loginStatusVm}) = _$_LoginNewState;

  @override
  ViewModel<VerifyNestCaptchaResponse>? get sentCaptchaVm;
  @override
  ViewModel<NestLoginResponse>? get nestPhoneLoginVm;
  @override
  ViewModel<DataWrapResponse<NestLoginStatusResponse>>? get loginStatusVm;
  @override
  @JsonKey(ignore: true)
  _$$_LoginNewStateCopyWith<_$_LoginNewState> get copyWith =>
      throw _privateConstructorUsedError;
}
