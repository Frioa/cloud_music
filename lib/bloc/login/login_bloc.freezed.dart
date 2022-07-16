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
    required TResult Function(_$sendCaptcha value) sendCaptcha,
    required TResult Function(_$cellphone value) cellphone,
    required TResult Function(_$loginStatus value) loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
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
abstract class _$$_$sendCaptchaCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_$sendCaptchaCopyWith(
          _$_$sendCaptcha value, $Res Function(_$_$sendCaptcha) then) =
      __$$_$sendCaptchaCopyWithImpl<$Res>;
  @override
  $Res call({String phone, VoidCallback? onSuccess, VoidCallback? onError});
}

/// @nodoc
class __$$_$sendCaptchaCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_$sendCaptchaCopyWith<$Res> {
  __$$_$sendCaptchaCopyWithImpl(
      _$_$sendCaptcha _value, $Res Function(_$_$sendCaptcha) _then)
      : super(_value, (v) => _then(v as _$_$sendCaptcha));

  @override
  _$_$sendCaptcha get _value => super._value as _$_$sendCaptcha;

  @override
  $Res call({
    Object? phone = freezed,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$_$sendCaptcha(
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

class _$_$sendCaptcha implements _$sendCaptcha {
  const _$_$sendCaptcha(this.phone, {this.onSuccess, this.onError});

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
            other is _$_$sendCaptcha &&
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
  _$$_$sendCaptchaCopyWith<_$_$sendCaptcha> get copyWith =>
      __$$_$sendCaptchaCopyWithImpl<_$_$sendCaptcha>(this, _$identity);

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
    required TResult Function(_$sendCaptcha value) sendCaptcha,
    required TResult Function(_$cellphone value) cellphone,
    required TResult Function(_$loginStatus value) loginStatus,
  }) {
    return sendCaptcha(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
  }) {
    return sendCaptcha?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (sendCaptcha != null) {
      return sendCaptcha(this);
    }
    return orElse();
  }
}

abstract class _$sendCaptcha implements LoginEvent {
  const factory _$sendCaptcha(final String phone,
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$_$sendCaptcha;

  String get phone;
  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$_$sendCaptchaCopyWith<_$_$sendCaptcha> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$cellphoneCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_$cellphoneCopyWith(
          _$_$cellphone value, $Res Function(_$_$cellphone) then) =
      __$$_$cellphoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phone,
      String captcha,
      VoidCallback? onSuccess,
      VoidCallback? onError});
}

/// @nodoc
class __$$_$cellphoneCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_$cellphoneCopyWith<$Res> {
  __$$_$cellphoneCopyWithImpl(
      _$_$cellphone _value, $Res Function(_$_$cellphone) _then)
      : super(_value, (v) => _then(v as _$_$cellphone));

  @override
  _$_$cellphone get _value => super._value as _$_$cellphone;

  @override
  $Res call({
    Object? phone = freezed,
    Object? captcha = freezed,
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$_$cellphone(
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

class _$_$cellphone implements _$cellphone {
  const _$_$cellphone(this.phone, this.captcha, {this.onSuccess, this.onError});

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
            other is _$_$cellphone &&
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
  _$$_$cellphoneCopyWith<_$_$cellphone> get copyWith =>
      __$$_$cellphoneCopyWithImpl<_$_$cellphone>(this, _$identity);

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
    required TResult Function(_$sendCaptcha value) sendCaptcha,
    required TResult Function(_$cellphone value) cellphone,
    required TResult Function(_$loginStatus value) loginStatus,
  }) {
    return cellphone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
  }) {
    return cellphone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (cellphone != null) {
      return cellphone(this);
    }
    return orElse();
  }
}

abstract class _$cellphone implements LoginEvent {
  const factory _$cellphone(final String phone, final String captcha,
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$_$cellphone;

  String get phone;
  String get captcha;
  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$_$cellphoneCopyWith<_$_$cellphone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$loginStatusCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_$loginStatusCopyWith(
          _$_$loginStatus value, $Res Function(_$_$loginStatus) then) =
      __$$_$loginStatusCopyWithImpl<$Res>;
  @override
  $Res call({VoidCallback? onSuccess, VoidCallback? onError});
}

/// @nodoc
class __$$_$loginStatusCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_$loginStatusCopyWith<$Res> {
  __$$_$loginStatusCopyWithImpl(
      _$_$loginStatus _value, $Res Function(_$_$loginStatus) _then)
      : super(_value, (v) => _then(v as _$_$loginStatus));

  @override
  _$_$loginStatus get _value => super._value as _$_$loginStatus;

  @override
  $Res call({
    Object? onSuccess = freezed,
    Object? onError = freezed,
  }) {
    return _then(_$_$loginStatus(
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

class _$_$loginStatus implements _$loginStatus {
  const _$_$loginStatus({this.onSuccess, this.onError});

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
            other is _$_$loginStatus &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  _$$_$loginStatusCopyWith<_$_$loginStatus> get copyWith =>
      __$$_$loginStatusCopyWithImpl<_$_$loginStatus>(this, _$identity);

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
    required TResult Function(_$sendCaptcha value) sendCaptcha,
    required TResult Function(_$cellphone value) cellphone,
    required TResult Function(_$loginStatus value) loginStatus,
  }) {
    return loginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
  }) {
    return loginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$sendCaptcha value)? sendCaptcha,
    TResult Function(_$cellphone value)? cellphone,
    TResult Function(_$loginStatus value)? loginStatus,
    required TResult orElse(),
  }) {
    if (loginStatus != null) {
      return loginStatus(this);
    }
    return orElse();
  }
}

abstract class _$loginStatus implements LoginEvent {
  const factory _$loginStatus(
      {final VoidCallback? onSuccess,
      final VoidCallback? onError}) = _$_$loginStatus;

  @override
  VoidCallback? get onSuccess;
  @override
  VoidCallback? get onError;
  @override
  @JsonKey(ignore: true)
  _$$_$loginStatusCopyWith<_$_$loginStatus> get copyWith =>
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
