// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) requestArtistsDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? requestArtistsDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? requestArtistsDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$requestArtistsDetail value)
        requestArtistsDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$requestArtistsDetail value)? requestArtistsDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$requestArtistsDetail value)? requestArtistsDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistEventCopyWith<ArtistEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistEventCopyWith<$Res> {
  factory $ArtistEventCopyWith(
          ArtistEvent value, $Res Function(ArtistEvent) then) =
      _$ArtistEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ArtistEventCopyWithImpl<$Res> implements $ArtistEventCopyWith<$Res> {
  _$ArtistEventCopyWithImpl(this._value, this._then);

  final ArtistEvent _value;
  // ignore: unused_field
  final $Res Function(ArtistEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$requestArtistsDetailCopyWith<$Res>
    implements $ArtistEventCopyWith<$Res> {
  factory _$$requestArtistsDetailCopyWith(_$requestArtistsDetail value,
          $Res Function(_$requestArtistsDetail) then) =
      __$$requestArtistsDetailCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$requestArtistsDetailCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res>
    implements _$$requestArtistsDetailCopyWith<$Res> {
  __$$requestArtistsDetailCopyWithImpl(_$requestArtistsDetail _value,
      $Res Function(_$requestArtistsDetail) _then)
      : super(_value, (v) => _then(v as _$requestArtistsDetail));

  @override
  _$requestArtistsDetail get _value => super._value as _$requestArtistsDetail;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$requestArtistsDetail(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_$requestArtistsDetail implements _$requestArtistsDetail {
  const _$_$requestArtistsDetail(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ArtistEvent.requestArtistsDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$requestArtistsDetail &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$requestArtistsDetailCopyWith<_$requestArtistsDetail> get copyWith =>
      __$$requestArtistsDetailCopyWithImpl<_$requestArtistsDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) requestArtistsDetail,
  }) {
    return requestArtistsDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? requestArtistsDetail,
  }) {
    return requestArtistsDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? requestArtistsDetail,
    required TResult orElse(),
  }) {
    if (requestArtistsDetail != null) {
      return requestArtistsDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$requestArtistsDetail value)
        requestArtistsDetail,
  }) {
    return requestArtistsDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$requestArtistsDetail value)? requestArtistsDetail,
  }) {
    return requestArtistsDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$requestArtistsDetail value)? requestArtistsDetail,
    required TResult orElse(),
  }) {
    if (requestArtistsDetail != null) {
      return requestArtistsDetail(this);
    }
    return orElse();
  }
}

abstract class _$requestArtistsDetail implements ArtistEvent {
  const factory _$requestArtistsDetail(final int id) = _$_$requestArtistsDetail;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$requestArtistsDetailCopyWith<_$requestArtistsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistState {
  ViewModel<DataWrapResponse<ArtistsDetailResponse>> get artistDetailVM =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistStateCopyWith<ArtistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateCopyWith<$Res> {
  factory $ArtistStateCopyWith(
          ArtistState value, $Res Function(ArtistState) then) =
      _$ArtistStateCopyWithImpl<$Res>;
  $Res call(
      {ViewModel<DataWrapResponse<ArtistsDetailResponse>> artistDetailVM});
}

/// @nodoc
class _$ArtistStateCopyWithImpl<$Res> implements $ArtistStateCopyWith<$Res> {
  _$ArtistStateCopyWithImpl(this._value, this._then);

  final ArtistState _value;
  // ignore: unused_field
  final $Res Function(ArtistState) _then;

  @override
  $Res call({
    Object? artistDetailVM = freezed,
  }) {
    return _then(_value.copyWith(
      artistDetailVM: artistDetailVM == freezed
          ? _value.artistDetailVM
          : artistDetailVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<ArtistsDetailResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$ArtistStateCopyWith<$Res>
    implements $ArtistStateCopyWith<$Res> {
  factory _$ArtistStateCopyWith(
          _ArtistState value, $Res Function(_ArtistState) then) =
      __$ArtistStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ViewModel<DataWrapResponse<ArtistsDetailResponse>> artistDetailVM});
}

/// @nodoc
class __$ArtistStateCopyWithImpl<$Res> extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ArtistStateCopyWith<$Res> {
  __$ArtistStateCopyWithImpl(
      _ArtistState _value, $Res Function(_ArtistState) _then)
      : super(_value, (v) => _then(v as _ArtistState));

  @override
  _ArtistState get _value => super._value as _ArtistState;

  @override
  $Res call({
    Object? artistDetailVM = freezed,
  }) {
    return _then(_ArtistState(
      artistDetailVM: artistDetailVM == freezed
          ? _value.artistDetailVM
          : artistDetailVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<DataWrapResponse<ArtistsDetailResponse>>,
    ));
  }
}

/// @nodoc

class _$_ArtistState implements _ArtistState {
  const _$_ArtistState({required this.artistDetailVM});

  @override
  final ViewModel<DataWrapResponse<ArtistsDetailResponse>> artistDetailVM;

  @override
  String toString() {
    return 'ArtistState(artistDetailVM: $artistDetailVM)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistState &&
            const DeepCollectionEquality()
                .equals(other.artistDetailVM, artistDetailVM));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(artistDetailVM));

  @JsonKey(ignore: true)
  @override
  _$ArtistStateCopyWith<_ArtistState> get copyWith =>
      __$ArtistStateCopyWithImpl<_ArtistState>(this, _$identity);
}

abstract class _ArtistState implements ArtistState {
  const factory _ArtistState(
      {required final ViewModel<DataWrapResponse<ArtistsDetailResponse>>
          artistDetailVM}) = _$_ArtistState;

  @override
  ViewModel<DataWrapResponse<ArtistsDetailResponse>> get artistDetailVM =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArtistStateCopyWith<_ArtistState> get copyWith =>
      throw _privateConstructorUsedError;
}
