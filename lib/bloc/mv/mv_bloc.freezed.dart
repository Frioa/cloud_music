// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mv_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MVEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, VoidCallback onSuccess) requestMVURL,
    required TResult Function(int mvId) requestDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) requestMVURL,
    required TResult Function(_$requestDetail value) requestDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MVEventCopyWith<$Res> {
  factory $MVEventCopyWith(MVEvent value, $Res Function(MVEvent) then) =
      _$MVEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MVEventCopyWithImpl<$Res> implements $MVEventCopyWith<$Res> {
  _$MVEventCopyWithImpl(this._value, this._then);

  final MVEvent _value;
  // ignore: unused_field
  final $Res Function(MVEvent) _then;
}

/// @nodoc
abstract class _$$MVURLCopyWith<$Res> {
  factory _$$MVURLCopyWith(_$MVURL value, $Res Function(_$MVURL) then) =
      __$$MVURLCopyWithImpl<$Res>;
  $Res call({int id, VoidCallback onSuccess});
}

/// @nodoc
class __$$MVURLCopyWithImpl<$Res> extends _$MVEventCopyWithImpl<$Res>
    implements _$$MVURLCopyWith<$Res> {
  __$$MVURLCopyWithImpl(_$MVURL _value, $Res Function(_$MVURL) _then)
      : super(_value, (v) => _then(v as _$MVURL));

  @override
  _$MVURL get _value => super._value as _$MVURL;

  @override
  $Res call({
    Object? id = freezed,
    Object? onSuccess = freezed,
  }) {
    return _then(_$MVURL(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      onSuccess: onSuccess == freezed
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$_$MVURL implements _$MVURL {
  const _$_$MVURL(this.id, {required this.onSuccess});

  @override
  final int id;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'MVEvent.requestMVURL(id: $id, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MVURL &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), onSuccess);

  @JsonKey(ignore: true)
  @override
  _$$MVURLCopyWith<_$MVURL> get copyWith =>
      __$$MVURLCopyWithImpl<_$MVURL>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, VoidCallback onSuccess) requestMVURL,
    required TResult Function(int mvId) requestDetail,
  }) {
    return requestMVURL(id, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
  }) {
    return requestMVURL?.call(id, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
    required TResult orElse(),
  }) {
    if (requestMVURL != null) {
      return requestMVURL(id, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) requestMVURL,
    required TResult Function(_$requestDetail value) requestDetail,
  }) {
    return requestMVURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
  }) {
    return requestMVURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
    required TResult orElse(),
  }) {
    if (requestMVURL != null) {
      return requestMVURL(this);
    }
    return orElse();
  }
}

abstract class _$MVURL implements MVEvent {
  const factory _$MVURL(final int id, {required final VoidCallback onSuccess}) =
      _$_$MVURL;

  int get id => throw _privateConstructorUsedError;
  VoidCallback get onSuccess => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MVURLCopyWith<_$MVURL> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$requestDetailCopyWith<$Res> {
  factory _$$requestDetailCopyWith(
          _$requestDetail value, $Res Function(_$requestDetail) then) =
      __$$requestDetailCopyWithImpl<$Res>;
  $Res call({int mvId});
}

/// @nodoc
class __$$requestDetailCopyWithImpl<$Res> extends _$MVEventCopyWithImpl<$Res>
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
    return 'MVEvent.requestDetail(mvId: $mvId)';
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
    required TResult Function(int id, VoidCallback onSuccess) requestMVURL,
    required TResult Function(int mvId) requestDetail,
  }) {
    return requestDetail(mvId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
  }) {
    return requestDetail?.call(mvId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? requestMVURL,
    TResult Function(int mvId)? requestDetail,
    required TResult orElse(),
  }) {
    if (requestDetail != null) {
      return requestDetail(mvId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MVURL value) requestMVURL,
    required TResult Function(_$requestDetail value) requestDetail,
  }) {
    return requestDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
  }) {
    return requestDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MVURL value)? requestMVURL,
    TResult Function(_$requestDetail value)? requestDetail,
    required TResult orElse(),
  }) {
    if (requestDetail != null) {
      return requestDetail(this);
    }
    return orElse();
  }
}

abstract class _$requestDetail implements MVEvent {
  const factory _$requestDetail(final int mvId) = _$_$requestDetail;

  int get mvId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$requestDetailCopyWith<_$requestDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MVState {
  ViewModel<DataWrapResponse<MVURLResponse>>? get mvUrlVm =>
      throw _privateConstructorUsedError;
  ViewModel<DataWrapResponse<MvDetailResponse>>? get mvDetailVM =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MVStateCopyWith<MVState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MVStateCopyWith<$Res> {
  factory $MVStateCopyWith(MVState value, $Res Function(MVState) then) =
      _$MVStateCopyWithImpl<$Res>;
  $Res call(
      {ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
      ViewModel<DataWrapResponse<MvDetailResponse>>? mvDetailVM});
}

/// @nodoc
class _$MVStateCopyWithImpl<$Res> implements $MVStateCopyWith<$Res> {
  _$MVStateCopyWithImpl(this._value, this._then);

  final MVState _value;
  // ignore: unused_field
  final $Res Function(MVState) _then;

  @override
  $Res call({
    Object? mvUrlVm = freezed,
    Object? mvDetailVM = freezed,
  }) {
    return _then(_value.copyWith(
      mvUrlVm: mvUrlVm == freezed
          ? _value.mvUrlVm
          : mvUrlVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MVURLResponse>>?,
      mvDetailVM: mvDetailVM == freezed
          ? _value.mvDetailVM
          : mvDetailVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MvDetailResponse>>?,
    ));
  }
}

/// @nodoc
abstract class _$MVStateCopyWith<$Res> implements $MVStateCopyWith<$Res> {
  factory _$MVStateCopyWith(_MVState value, $Res Function(_MVState) then) =
      __$MVStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
      ViewModel<DataWrapResponse<MvDetailResponse>>? mvDetailVM});
}

/// @nodoc
class __$MVStateCopyWithImpl<$Res> extends _$MVStateCopyWithImpl<$Res>
    implements _$MVStateCopyWith<$Res> {
  __$MVStateCopyWithImpl(_MVState _value, $Res Function(_MVState) _then)
      : super(_value, (v) => _then(v as _MVState));

  @override
  _MVState get _value => super._value as _MVState;

  @override
  $Res call({
    Object? mvUrlVm = freezed,
    Object? mvDetailVM = freezed,
  }) {
    return _then(_MVState(
      mvUrlVm: mvUrlVm == freezed
          ? _value.mvUrlVm
          : mvUrlVm // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MVURLResponse>>?,
      mvDetailVM: mvDetailVM == freezed
          ? _value.mvDetailVM
          : mvDetailVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<MvDetailResponse>>?,
    ));
  }
}

/// @nodoc

class _$_MVState implements _MVState {
  const _$_MVState({this.mvUrlVm, this.mvDetailVM});

  @override
  final ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm;
  @override
  final ViewModel<DataWrapResponse<MvDetailResponse>>? mvDetailVM;

  @override
  String toString() {
    return 'MVState(mvUrlVm: $mvUrlVm, mvDetailVM: $mvDetailVM)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MVState &&
            const DeepCollectionEquality().equals(other.mvUrlVm, mvUrlVm) &&
            const DeepCollectionEquality()
                .equals(other.mvDetailVM, mvDetailVM));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mvUrlVm),
      const DeepCollectionEquality().hash(mvDetailVM));

  @JsonKey(ignore: true)
  @override
  _$MVStateCopyWith<_MVState> get copyWith =>
      __$MVStateCopyWithImpl<_MVState>(this, _$identity);
}

abstract class _MVState implements MVState {
  const factory _MVState(
          {final ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
          final ViewModel<DataWrapResponse<MvDetailResponse>>? mvDetailVM}) =
      _$_MVState;

  @override
  ViewModel<DataWrapResponse<MVURLResponse>>? get mvUrlVm =>
      throw _privateConstructorUsedError;
  @override
  ViewModel<DataWrapResponse<MvDetailResponse>>? get mvDetailVM =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MVStateCopyWith<_MVState> get copyWith =>
      throw _privateConstructorUsedError;
}
