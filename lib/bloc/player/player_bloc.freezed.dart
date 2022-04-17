// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerEventTearOff {
  const _$PlayerEventTearOff();

  _song song(Song song) {
    return _song(
      song,
    );
  }

  _songDetail songDetail(SongDetail songDetail) {
    return _songDetail(
      songDetail,
    );
  }

  _isPlaying isPlaying(bool isPlaying) {
    return _isPlaying(
      isPlaying,
    );
  }

  _duration duration(Duration duration) {
    return _duration(
      duration,
    );
  }

  _lyric lyric(int id) {
    return _lyric(
      id,
    );
  }
}

/// @nodoc
const $PlayerEvent = _$PlayerEventTearOff();

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res> implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  final PlayerEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerEvent) _then;
}

/// @nodoc
abstract class _$songCopyWith<$Res> {
  factory _$songCopyWith(_song value, $Res Function(_song) then) =
      __$songCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$songCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$songCopyWith<$Res> {
  __$songCopyWithImpl(_song _value, $Res Function(_song) _then)
      : super(_value, (v) => _then(v as _song));

  @override
  _song get _value => super._value as _song;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_song(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_song implements _song {
  const _$_song(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'PlayerEvent.song(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _song &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$songCopyWith<_song> get copyWith =>
      __$songCopyWithImpl<_song>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) {
    return song(this.song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) {
    return song?.call(this.song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this.song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) {
    return song(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) {
    return song?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this);
    }
    return orElse();
  }
}

abstract class _song implements PlayerEvent {
  const factory _song(Song song) = _$_song;

  Song get song;
  @JsonKey(ignore: true)
  _$songCopyWith<_song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$songDetailCopyWith<$Res> {
  factory _$songDetailCopyWith(
          _songDetail value, $Res Function(_songDetail) then) =
      __$songDetailCopyWithImpl<$Res>;
  $Res call({SongDetail songDetail});
}

/// @nodoc
class __$songDetailCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$songDetailCopyWith<$Res> {
  __$songDetailCopyWithImpl(
      _songDetail _value, $Res Function(_songDetail) _then)
      : super(_value, (v) => _then(v as _songDetail));

  @override
  _songDetail get _value => super._value as _songDetail;

  @override
  $Res call({
    Object? songDetail = freezed,
  }) {
    return _then(_songDetail(
      songDetail == freezed
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail,
    ));
  }
}

/// @nodoc

class _$_songDetail implements _songDetail {
  const _$_songDetail(this.songDetail);

  @override
  final SongDetail songDetail;

  @override
  String toString() {
    return 'PlayerEvent.songDetail(songDetail: $songDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _songDetail &&
            const DeepCollectionEquality()
                .equals(other.songDetail, songDetail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(songDetail));

  @JsonKey(ignore: true)
  @override
  _$songDetailCopyWith<_songDetail> get copyWith =>
      __$songDetailCopyWithImpl<_songDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) {
    return songDetail(this.songDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) {
    return songDetail?.call(this.songDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) {
    if (songDetail != null) {
      return songDetail(this.songDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) {
    return songDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) {
    return songDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) {
    if (songDetail != null) {
      return songDetail(this);
    }
    return orElse();
  }
}

abstract class _songDetail implements PlayerEvent {
  const factory _songDetail(SongDetail songDetail) = _$_songDetail;

  SongDetail get songDetail;
  @JsonKey(ignore: true)
  _$songDetailCopyWith<_songDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$isPlayingCopyWith<$Res> {
  factory _$isPlayingCopyWith(
          _isPlaying value, $Res Function(_isPlaying) then) =
      __$isPlayingCopyWithImpl<$Res>;
  $Res call({bool isPlaying});
}

/// @nodoc
class __$isPlayingCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$isPlayingCopyWith<$Res> {
  __$isPlayingCopyWithImpl(_isPlaying _value, $Res Function(_isPlaying) _then)
      : super(_value, (v) => _then(v as _isPlaying));

  @override
  _isPlaying get _value => super._value as _isPlaying;

  @override
  $Res call({
    Object? isPlaying = freezed,
  }) {
    return _then(_isPlaying(
      isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_isPlaying implements _isPlaying {
  const _$_isPlaying(this.isPlaying);

  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'PlayerEvent.isPlaying(isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _isPlaying &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPlaying));

  @JsonKey(ignore: true)
  @override
  _$isPlayingCopyWith<_isPlaying> get copyWith =>
      __$isPlayingCopyWithImpl<_isPlaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) {
    return isPlaying(this.isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) {
    return isPlaying?.call(this.isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) {
    if (isPlaying != null) {
      return isPlaying(this.isPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) {
    return isPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) {
    return isPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) {
    if (isPlaying != null) {
      return isPlaying(this);
    }
    return orElse();
  }
}

abstract class _isPlaying implements PlayerEvent {
  const factory _isPlaying(bool isPlaying) = _$_isPlaying;

  bool get isPlaying;
  @JsonKey(ignore: true)
  _$isPlayingCopyWith<_isPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$durationCopyWith<$Res> {
  factory _$durationCopyWith(_duration value, $Res Function(_duration) then) =
      __$durationCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$durationCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$durationCopyWith<$Res> {
  __$durationCopyWithImpl(_duration _value, $Res Function(_duration) _then)
      : super(_value, (v) => _then(v as _duration));

  @override
  _duration get _value => super._value as _duration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_duration(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_duration implements _duration {
  const _$_duration(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PlayerEvent.duration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _duration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$durationCopyWith<_duration> get copyWith =>
      __$durationCopyWithImpl<_duration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) {
    return duration(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) {
    return duration?.call(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this.duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }
}

abstract class _duration implements PlayerEvent {
  const factory _duration(Duration duration) = _$_duration;

  Duration get duration;
  @JsonKey(ignore: true)
  _$durationCopyWith<_duration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$lyricCopyWith<$Res> {
  factory _$lyricCopyWith(_lyric value, $Res Function(_lyric) then) =
      __$lyricCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$lyricCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$lyricCopyWith<$Res> {
  __$lyricCopyWithImpl(_lyric _value, $Res Function(_lyric) _then)
      : super(_value, (v) => _then(v as _lyric));

  @override
  _lyric get _value => super._value as _lyric;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_lyric(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_lyric implements _lyric {
  const _$_lyric(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PlayerEvent.lyric(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _lyric &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$lyricCopyWith<_lyric> get copyWith =>
      __$lyricCopyWithImpl<_lyric>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
  }) {
    return lyric(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
  }) {
    return lyric?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    required TResult orElse(),
  }) {
    if (lyric != null) {
      return lyric(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_song value) song,
    required TResult Function(_songDetail value) songDetail,
    required TResult Function(_isPlaying value) isPlaying,
    required TResult Function(_duration value) duration,
    required TResult Function(_lyric value) lyric,
  }) {
    return lyric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
  }) {
    return lyric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_song value)? song,
    TResult Function(_songDetail value)? songDetail,
    TResult Function(_isPlaying value)? isPlaying,
    TResult Function(_duration value)? duration,
    TResult Function(_lyric value)? lyric,
    required TResult orElse(),
  }) {
    if (lyric != null) {
      return lyric(this);
    }
    return orElse();
  }
}

abstract class _lyric implements PlayerEvent {
  const factory _lyric(int id) = _$_lyric;

  int get id;
  @JsonKey(ignore: true)
  _$lyricCopyWith<_lyric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayerStateTearOff {
  const _$PlayerStateTearOff();

  _PlayerState call(
      {Song? playingSong,
      SongDetail? songDetail,
      required bool isPlaying,
      required Duration duration,
      required ViewModel<LyricResponse> lyricVM,
      required List<Lyric> lyricList}) {
    return _PlayerState(
      playingSong: playingSong,
      songDetail: songDetail,
      isPlaying: isPlaying,
      duration: duration,
      lyricVM: lyricVM,
      lyricList: lyricList,
    );
  }
}

/// @nodoc
const $PlayerState = _$PlayerStateTearOff();

/// @nodoc
mixin _$PlayerState {
  Song? get playingSong => throw _privateConstructorUsedError;
  SongDetail? get songDetail => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  ViewModel<LyricResponse> get lyricVM => throw _privateConstructorUsedError;
  List<Lyric> get lyricList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res>;
  $Res call(
      {Song? playingSong,
      SongDetail? songDetail,
      bool isPlaying,
      Duration duration,
      ViewModel<LyricResponse> lyricVM,
      List<Lyric> lyricList});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res> implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  final PlayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerState) _then;

  @override
  $Res call({
    Object? playingSong = freezed,
    Object? songDetail = freezed,
    Object? isPlaying = freezed,
    Object? duration = freezed,
    Object? lyricVM = freezed,
    Object? lyricList = freezed,
  }) {
    return _then(_value.copyWith(
      playingSong: playingSong == freezed
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      songDetail: songDetail == freezed
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail?,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lyricVM: lyricVM == freezed
          ? _value.lyricVM
          : lyricVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<LyricResponse>,
      lyricList: lyricList == freezed
          ? _value.lyricList
          : lyricList // ignore: cast_nullable_to_non_nullable
              as List<Lyric>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerStateCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$PlayerStateCopyWith(
          _PlayerState value, $Res Function(_PlayerState) then) =
      __$PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Song? playingSong,
      SongDetail? songDetail,
      bool isPlaying,
      Duration duration,
      ViewModel<LyricResponse> lyricVM,
      List<Lyric> lyricList});
}

/// @nodoc
class __$PlayerStateCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$PlayerStateCopyWith<$Res> {
  __$PlayerStateCopyWithImpl(
      _PlayerState _value, $Res Function(_PlayerState) _then)
      : super(_value, (v) => _then(v as _PlayerState));

  @override
  _PlayerState get _value => super._value as _PlayerState;

  @override
  $Res call({
    Object? playingSong = freezed,
    Object? songDetail = freezed,
    Object? isPlaying = freezed,
    Object? duration = freezed,
    Object? lyricVM = freezed,
    Object? lyricList = freezed,
  }) {
    return _then(_PlayerState(
      playingSong: playingSong == freezed
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      songDetail: songDetail == freezed
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail?,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lyricVM: lyricVM == freezed
          ? _value.lyricVM
          : lyricVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<LyricResponse>,
      lyricList: lyricList == freezed
          ? _value.lyricList
          : lyricList // ignore: cast_nullable_to_non_nullable
              as List<Lyric>,
    ));
  }
}

/// @nodoc

class _$_PlayerState implements _PlayerState {
  const _$_PlayerState(
      {this.playingSong,
      this.songDetail,
      required this.isPlaying,
      required this.duration,
      required this.lyricVM,
      required this.lyricList});

  @override
  final Song? playingSong;
  @override
  final SongDetail? songDetail;
  @override
  final bool isPlaying;
  @override
  final Duration duration;
  @override
  final ViewModel<LyricResponse> lyricVM;
  @override
  final List<Lyric> lyricList;

  @override
  String toString() {
    return 'PlayerState(playingSong: $playingSong, songDetail: $songDetail, isPlaying: $isPlaying, duration: $duration, lyricVM: $lyricVM, lyricList: $lyricList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerState &&
            const DeepCollectionEquality()
                .equals(other.playingSong, playingSong) &&
            const DeepCollectionEquality()
                .equals(other.songDetail, songDetail) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.lyricVM, lyricVM) &&
            const DeepCollectionEquality().equals(other.lyricList, lyricList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playingSong),
      const DeepCollectionEquality().hash(songDetail),
      const DeepCollectionEquality().hash(isPlaying),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(lyricVM),
      const DeepCollectionEquality().hash(lyricList));

  @JsonKey(ignore: true)
  @override
  _$PlayerStateCopyWith<_PlayerState> get copyWith =>
      __$PlayerStateCopyWithImpl<_PlayerState>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {Song? playingSong,
      SongDetail? songDetail,
      required bool isPlaying,
      required Duration duration,
      required ViewModel<LyricResponse> lyricVM,
      required List<Lyric> lyricList}) = _$_PlayerState;

  @override
  Song? get playingSong;
  @override
  SongDetail? get songDetail;
  @override
  bool get isPlaying;
  @override
  Duration get duration;
  @override
  ViewModel<LyricResponse> get lyricVM;
  @override
  List<Lyric> get lyricList;
  @override
  @JsonKey(ignore: true)
  _$PlayerStateCopyWith<_PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
