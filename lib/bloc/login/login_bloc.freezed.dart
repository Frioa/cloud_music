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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(int mvId) loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) login,
    required TResult Function(_$requestDetail value) loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$MVURLCopyWith<$Res> {
  factory _$$MVURLCopyWith(_$MVURL value, $Res Function(_$MVURL) then) =
      __$$MVURLCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MVURLCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$MVURLCopyWith<$Res> {
  __$$MVURLCopyWithImpl(_$MVURL _value, $Res Function(_$MVURL) _then)
      : super(_value, (v) => _then(v as _$MVURL));

  @override
  _$MVURL get _value => super._value as _$MVURL;
}

/// @nodoc

class _$_$MVURL implements _$MVURL {
  const _$_$MVURL();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MVURL);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(int mvId) loginStatus,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) login,
    required TResult Function(_$requestDetail value) loginStatus,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _$MVURL implements LoginEvent {
  const factory _$MVURL() = _$_$MVURL;
}

/// @nodoc
abstract class _$$requestDetailCopyWith<$Res> {
  factory _$$requestDetailCopyWith(
          _$requestDetail value, $Res Function(_$requestDetail) then) =
      __$$requestDetailCopyWithImpl<$Res>;
  $Res call({int mvId});
}

/// @nodoc
class __$$requestDetailCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$requestDetailCopyWith<$Res> {
  __$$requestDetailCopyWithImpl(
      _$requestDetail _value, $Res Function(_$requestDetail) _then)
      : super(_value, (v) => _then(v as _$requestDetail));

  @override
  _$requestDetail get _value => super._value as _$requestDetail;

  @override
  $Res call({
    Object? mvId = freezed,
  }) {
    return _then(_$requestDetail(
      mvId == freezed
          ? _value.mvId
          : mvId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_$requestDetail implements _$requestDetail {
  const _$_$requestDetail(this.mvId);

  @override
  final int mvId;

  @override
  String toString() {
    return 'LoginEvent.loginStatus(mvId: $mvId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$requestDetail &&
            const DeepCollectionEquality().equals(other.mvId, mvId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mvId));

  @JsonKey(ignore: true)
  @override
  _$$requestDetailCopyWith<_$requestDetail> get copyWith =>
      __$$requestDetailCopyWithImpl<_$requestDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(int mvId) loginStatus,
  }) {
    return loginStatus(mvId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
  }) {
    return loginStatus?.call(mvId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(int mvId)? loginStatus,
    required TResult orElse(),
  }) {
    if (loginStatus != null) {
      return loginStatus(mvId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) login,
    required TResult Function(_$requestDetail value) loginStatus,
  }) {
    return loginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
  }) {
    return loginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? login,
    TResult Function(_$requestDetail value)? loginStatus,
    required TResult orElse(),
  }) {
    if (loginStatus != null) {
      return loginStatus(this);
    }
    return orElse();
  }
}

abstract class _$requestDetail implements LoginEvent {
  const factory _$requestDetail(final int mvId) = _$_$requestDetail;

  int get mvId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$requestDetailCopyWith<_$requestDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginNewState {
  ViewModel<DataWrapResponse<MVURLResponse>>? get mvUrlVm =>
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
  $Res call({ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm});
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
    Object? mvUrlVm = freezed,
  }) {
    return _then(_value.copyWith(
      mvUrlVm: mvUrlVm == freezed
          ? _value.mvUrlVm
          : mvUrlVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MVURLResponse>>?,
    ));
  }
}

/// @nodoc
abstract class _$LoginNewStateCopyWith<$Res>
    implements $LoginNewStateCopyWith<$Res> {
  factory _$LoginNewStateCopyWith(
          _LoginNewState value, $Res Function(_LoginNewState) then) =
      __$LoginNewStateCopyWithImpl<$Res>;
  @override
  $Res call({ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm});
}

/// @nodoc
class __$LoginNewStateCopyWithImpl<$Res>
    extends _$LoginNewStateCopyWithImpl<$Res>
    implements _$LoginNewStateCopyWith<$Res> {
  __$LoginNewStateCopyWithImpl(
      _LoginNewState _value, $Res Function(_LoginNewState) _then)
      : super(_value, (v) => _then(v as _LoginNewState));

  @override
  _LoginNewState get _value => super._value as _LoginNewState;

  @override
  $Res call({
    Object? mvUrlVm = freezed,
  }) {
    return _then(_LoginNewState(
      mvUrlVm: mvUrlVm == freezed
          ? _value.mvUrlVm
          : mvUrlVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MVURLResponse>>?,
    ));
  }
}

/// @nodoc

class _$_LoginNewState implements _LoginNewState {
  const _$_LoginNewState({this.mvUrlVm});

  @override
  final ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm;

  @override
  String toString() {
    return 'LoginNewState(mvUrlVm: $mvUrlVm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginNewState &&
            const DeepCollectionEquality().equals(other.mvUrlVm, mvUrlVm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mvUrlVm));

  @JsonKey(ignore: true)
  @override
  _$LoginNewStateCopyWith<_LoginNewState> get copyWith =>
      __$LoginNewStateCopyWithImpl<_LoginNewState>(this, _$identity);
}

abstract class _LoginNewState implements LoginNewState {
  const factory _LoginNewState(
          {final ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm}) =
      _$_LoginNewState;

  @override
  ViewModel<DataWrapResponse<MVURLResponse>>? get mvUrlVm =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginNewStateCopyWith<_LoginNewState> get copyWith =>
      throw _privateConstructorUsedError;
}
