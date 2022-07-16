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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
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
abstract class _$$_$playSongCopyWith<$Res> {
  factory _$$_$playSongCopyWith(
          _$_$playSong value, $Res Function(_$_$playSong) then) =
      __$$_$playSongCopyWithImpl<$Res>;
  $Res call({Song song, List<Song> songList});
}

/// @nodoc
class __$$_$playSongCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$playSongCopyWith<$Res> {
  __$$_$playSongCopyWithImpl(
      _$_$playSong _value, $Res Function(_$_$playSong) _then)
      : super(_value, (v) => _then(v as _$_$playSong));

  @override
  _$_$playSong get _value => super._value as _$_$playSong;

  @override
  $Res call({
    Object? song = freezed,
    Object? songList = freezed,
  }) {
    return _then(_$_$playSong(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      songList == freezed
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$_$playSong implements _$playSong {
  const _$_$playSong(this.song, final List<Song> songList)
      : _songList = songList;

  @override
  final Song song;
  final List<Song> _songList;
  @override
  List<Song> get songList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  String toString() {
    return 'PlayerEvent.song(song: $song, songList: $songList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$playSong &&
            const DeepCollectionEquality().equals(other.song, song) &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(song),
      const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  _$$_$playSongCopyWith<_$_$playSong> get copyWith =>
      __$$_$playSongCopyWithImpl<_$_$playSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return song(this.song, this.songList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return song?.call(this.song, this.songList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this.song, this.songList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return song(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return song?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this);
    }
    return orElse();
  }
}

abstract class _$playSong implements PlayerEvent {
  const factory _$playSong(final Song song, final List<Song> songList) =
      _$_$playSong;

  Song get song;
  List<Song> get songList;
  @JsonKey(ignore: true)
  _$$_$playSongCopyWith<_$_$playSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$songDetailCopyWith<$Res> {
  factory _$$_$songDetailCopyWith(
          _$_$songDetail value, $Res Function(_$_$songDetail) then) =
      __$$_$songDetailCopyWithImpl<$Res>;
  $Res call({SongDetail songDetail});
}

/// @nodoc
class __$$_$songDetailCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$songDetailCopyWith<$Res> {
  __$$_$songDetailCopyWithImpl(
      _$_$songDetail _value, $Res Function(_$_$songDetail) _then)
      : super(_value, (v) => _then(v as _$_$songDetail));

  @override
  _$_$songDetail get _value => super._value as _$_$songDetail;

  @override
  $Res call({
    Object? songDetail = freezed,
  }) {
    return _then(_$_$songDetail(
      songDetail == freezed
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail,
    ));
  }
}

/// @nodoc

class _$_$songDetail implements _$songDetail {
  const _$_$songDetail(this.songDetail);

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
            other is _$_$songDetail &&
            const DeepCollectionEquality()
                .equals(other.songDetail, songDetail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(songDetail));

  @JsonKey(ignore: true)
  @override
  _$$_$songDetailCopyWith<_$_$songDetail> get copyWith =>
      __$$_$songDetailCopyWithImpl<_$_$songDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return songDetail(this.songDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return songDetail?.call(this.songDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
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
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return songDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return songDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (songDetail != null) {
      return songDetail(this);
    }
    return orElse();
  }
}

abstract class _$songDetail implements PlayerEvent {
  const factory _$songDetail(final SongDetail songDetail) = _$_$songDetail;

  SongDetail get songDetail;
  @JsonKey(ignore: true)
  _$$_$songDetailCopyWith<_$_$songDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$isPlayingCopyWith<$Res> {
  factory _$$_$isPlayingCopyWith(
          _$_$isPlaying value, $Res Function(_$_$isPlaying) then) =
      __$$_$isPlayingCopyWithImpl<$Res>;
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$_$isPlayingCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$isPlayingCopyWith<$Res> {
  __$$_$isPlayingCopyWithImpl(
      _$_$isPlaying _value, $Res Function(_$_$isPlaying) _then)
      : super(_value, (v) => _then(v as _$_$isPlaying));

  @override
  _$_$isPlaying get _value => super._value as _$_$isPlaying;

  @override
  $Res call({
    Object? isPlaying = freezed,
  }) {
    return _then(_$_$isPlaying(
      isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$isPlaying implements _$isPlaying {
  const _$_$isPlaying(this.isPlaying);

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
            other is _$_$isPlaying &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPlaying));

  @JsonKey(ignore: true)
  @override
  _$$_$isPlayingCopyWith<_$_$isPlaying> get copyWith =>
      __$$_$isPlayingCopyWithImpl<_$_$isPlaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return isPlaying(this.isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return isPlaying?.call(this.isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
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
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return isPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return isPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (isPlaying != null) {
      return isPlaying(this);
    }
    return orElse();
  }
}

abstract class _$isPlaying implements PlayerEvent {
  const factory _$isPlaying(final bool isPlaying) = _$_$isPlaying;

  bool get isPlaying;
  @JsonKey(ignore: true)
  _$$_$isPlayingCopyWith<_$_$isPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$durationCopyWith<$Res> {
  factory _$$_$durationCopyWith(
          _$_$duration value, $Res Function(_$_$duration) then) =
      __$$_$durationCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$$_$durationCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$durationCopyWith<$Res> {
  __$$_$durationCopyWithImpl(
      _$_$duration _value, $Res Function(_$_$duration) _then)
      : super(_value, (v) => _then(v as _$_$duration));

  @override
  _$_$duration get _value => super._value as _$_$duration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$_$duration(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_$duration implements _$duration {
  const _$_$duration(this.duration);

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
            other is _$_$duration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_$durationCopyWith<_$_$duration> get copyWith =>
      __$$_$durationCopyWithImpl<_$_$duration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return duration(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return duration?.call(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
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
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }
}

abstract class _$duration implements PlayerEvent {
  const factory _$duration(final Duration duration) = _$_$duration;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_$durationCopyWith<_$_$duration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_lyricCopyWith<$Res> {
  factory _$$_lyricCopyWith(_$_lyric value, $Res Function(_$_lyric) then) =
      __$$_lyricCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_lyricCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_lyricCopyWith<$Res> {
  __$$_lyricCopyWithImpl(_$_lyric _value, $Res Function(_$_lyric) _then)
      : super(_value, (v) => _then(v as _$_lyric));

  @override
  _$_lyric get _value => super._value as _$_lyric;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_lyric(
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
            other is _$_lyric &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_lyricCopyWith<_$_lyric> get copyWith =>
      __$$_lyricCopyWithImpl<_$_lyric>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return lyric(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return lyric?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
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
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return lyric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return lyric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (lyric != null) {
      return lyric(this);
    }
    return orElse();
  }
}

abstract class _lyric implements PlayerEvent {
  const factory _lyric(final int id) = _$_lyric;

  int get id;
  @JsonKey(ignore: true)
  _$$_lyricCopyWith<_$_lyric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$songListCopyWith<$Res> {
  factory _$$_$songListCopyWith(
          _$_$songList value, $Res Function(_$_$songList) then) =
      __$$_$songListCopyWithImpl<$Res>;
  $Res call({List<Song> list});
}

/// @nodoc
class __$$_$songListCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$songListCopyWith<$Res> {
  __$$_$songListCopyWithImpl(
      _$_$songList _value, $Res Function(_$_$songList) _then)
      : super(_value, (v) => _then(v as _$_$songList));

  @override
  _$_$songList get _value => super._value as _$_$songList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_$songList(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$_$songList implements _$songList {
  const _$_$songList(final List<Song> list) : _list = list;

  final List<Song> _list;
  @override
  List<Song> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PlayerEvent.songList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$songList &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_$songListCopyWith<_$_$songList> get copyWith =>
      __$$_$songListCopyWithImpl<_$_$songList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return songList(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return songList?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
    required TResult orElse(),
  }) {
    if (songList != null) {
      return songList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return songList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return songList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (songList != null) {
      return songList(this);
    }
    return orElse();
  }
}

abstract class _$songList implements PlayerEvent {
  const factory _$songList(final List<Song> list) = _$_$songList;

  List<Song> get list;
  @JsonKey(ignore: true)
  _$$_$songListCopyWith<_$_$songList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$nextSongCopyWith<$Res> {
  factory _$$_$nextSongCopyWith(
          _$_$nextSong value, $Res Function(_$_$nextSong) then) =
      __$$_$nextSongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$nextSongCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$nextSongCopyWith<$Res> {
  __$$_$nextSongCopyWithImpl(
      _$_$nextSong _value, $Res Function(_$_$nextSong) _then)
      : super(_value, (v) => _then(v as _$_$nextSong));

  @override
  _$_$nextSong get _value => super._value as _$_$nextSong;
}

/// @nodoc

class _$_$nextSong implements _$nextSong {
  const _$_$nextSong();

  @override
  String toString() {
    return 'PlayerEvent.nextSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$nextSong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return nextSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return nextSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
    required TResult orElse(),
  }) {
    if (nextSong != null) {
      return nextSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return nextSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return nextSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (nextSong != null) {
      return nextSong(this);
    }
    return orElse();
  }
}

abstract class _$nextSong implements PlayerEvent {
  const factory _$nextSong() = _$_$nextSong;
}

/// @nodoc
abstract class _$$_$preSongCopyWith<$Res> {
  factory _$$_$preSongCopyWith(
          _$_$preSong value, $Res Function(_$_$preSong) then) =
      __$$_$preSongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$preSongCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements _$$_$preSongCopyWith<$Res> {
  __$$_$preSongCopyWithImpl(
      _$_$preSong _value, $Res Function(_$_$preSong) _then)
      : super(_value, (v) => _then(v as _$_$preSong));

  @override
  _$_$preSong get _value => super._value as _$_$preSong;
}

/// @nodoc

class _$_$preSong implements _$preSong {
  const _$_$preSong();

  @override
  String toString() {
    return 'PlayerEvent.preSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$preSong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Song song, List<Song> songList) song,
    required TResult Function(SongDetail songDetail) songDetail,
    required TResult Function(bool isPlaying) isPlaying,
    required TResult Function(Duration duration) duration,
    required TResult Function(int id) lyric,
    required TResult Function(List<Song> list) songList,
    required TResult Function() nextSong,
    required TResult Function() preSong,
  }) {
    return preSong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
  }) {
    return preSong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Song song, List<Song> songList)? song,
    TResult Function(SongDetail songDetail)? songDetail,
    TResult Function(bool isPlaying)? isPlaying,
    TResult Function(Duration duration)? duration,
    TResult Function(int id)? lyric,
    TResult Function(List<Song> list)? songList,
    TResult Function()? nextSong,
    TResult Function()? preSong,
    required TResult orElse(),
  }) {
    if (preSong != null) {
      return preSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$playSong value) song,
    required TResult Function(_$songDetail value) songDetail,
    required TResult Function(_$isPlaying value) isPlaying,
    required TResult Function(_$duration value) duration,
    required TResult Function(_lyric value) lyric,
    required TResult Function(_$songList value) songList,
    required TResult Function(_$nextSong value) nextSong,
    required TResult Function(_$preSong value) preSong,
  }) {
    return preSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
  }) {
    return preSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$playSong value)? song,
    TResult Function(_$songDetail value)? songDetail,
    TResult Function(_$isPlaying value)? isPlaying,
    TResult Function(_$duration value)? duration,
    TResult Function(_lyric value)? lyric,
    TResult Function(_$songList value)? songList,
    TResult Function(_$nextSong value)? nextSong,
    TResult Function(_$preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (preSong != null) {
      return preSong(this);
    }
    return orElse();
  }
}

abstract class _$preSong implements PlayerEvent {
  const factory _$preSong() = _$_$preSong;
}

/// @nodoc
mixin _$PlayerState {
  Song? get playingSong => throw _privateConstructorUsedError;
  SongDetail? get songDetail => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  ViewModel<LyricResponse> get lyricVM => throw _privateConstructorUsedError;
  List<Lyric> get lyricList => throw _privateConstructorUsedError;
  List<Song> get songList => throw _privateConstructorUsedError;
  LoopType get loopType => throw _privateConstructorUsedError;
  List<Song> get playRecord => throw _privateConstructorUsedError;

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
      List<Lyric> lyricList,
      List<Song> songList,
      LoopType loopType,
      List<Song> playRecord});
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
    Object? songList = freezed,
    Object? loopType = freezed,
    Object? playRecord = freezed,
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
      songList: songList == freezed
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      loopType: loopType == freezed
          ? _value.loopType
          : loopType // ignore: cast_nullable_to_non_nullable
              as LoopType,
      playRecord: playRecord == freezed
          ? _value.playRecord
          : playRecord // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerStateCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$_PlayerStateCopyWith(
          _$_PlayerState value, $Res Function(_$_PlayerState) then) =
      __$$_PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Song? playingSong,
      SongDetail? songDetail,
      bool isPlaying,
      Duration duration,
      ViewModel<LyricResponse> lyricVM,
      List<Lyric> lyricList,
      List<Song> songList,
      LoopType loopType,
      List<Song> playRecord});
}

/// @nodoc
class __$$_PlayerStateCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements _$$_PlayerStateCopyWith<$Res> {
  __$$_PlayerStateCopyWithImpl(
      _$_PlayerState _value, $Res Function(_$_PlayerState) _then)
      : super(_value, (v) => _then(v as _$_PlayerState));

  @override
  _$_PlayerState get _value => super._value as _$_PlayerState;

  @override
  $Res call({
    Object? playingSong = freezed,
    Object? songDetail = freezed,
    Object? isPlaying = freezed,
    Object? duration = freezed,
    Object? lyricVM = freezed,
    Object? lyricList = freezed,
    Object? songList = freezed,
    Object? loopType = freezed,
    Object? playRecord = freezed,
  }) {
    return _then(_$_PlayerState(
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
          ? _value._lyricList
          : lyricList // ignore: cast_nullable_to_non_nullable
              as List<Lyric>,
      songList: songList == freezed
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      loopType: loopType == freezed
          ? _value.loopType
          : loopType // ignore: cast_nullable_to_non_nullable
              as LoopType,
      playRecord: playRecord == freezed
          ? _value._playRecord
          : playRecord // ignore: cast_nullable_to_non_nullable
              as List<Song>,
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
      required final List<Lyric> lyricList,
      required final List<Song> songList,
      required this.loopType,
      required final List<Song> playRecord})
      : _lyricList = lyricList,
        _songList = songList,
        _playRecord = playRecord;

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
  final List<Lyric> _lyricList;
  @override
  List<Lyric> get lyricList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lyricList);
  }

  final List<Song> _songList;
  @override
  List<Song> get songList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  final LoopType loopType;
  final List<Song> _playRecord;
  @override
  List<Song> get playRecord {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playRecord);
  }

  @override
  String toString() {
    return 'PlayerState(playingSong: $playingSong, songDetail: $songDetail, isPlaying: $isPlaying, duration: $duration, lyricVM: $lyricVM, lyricList: $lyricList, songList: $songList, loopType: $loopType, playRecord: $playRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerState &&
            const DeepCollectionEquality()
                .equals(other.playingSong, playingSong) &&
            const DeepCollectionEquality()
                .equals(other.songDetail, songDetail) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.lyricVM, lyricVM) &&
            const DeepCollectionEquality()
                .equals(other._lyricList, _lyricList) &&
            const DeepCollectionEquality().equals(other._songList, _songList) &&
            const DeepCollectionEquality().equals(other.loopType, loopType) &&
            const DeepCollectionEquality()
                .equals(other._playRecord, _playRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playingSong),
      const DeepCollectionEquality().hash(songDetail),
      const DeepCollectionEquality().hash(isPlaying),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(lyricVM),
      const DeepCollectionEquality().hash(_lyricList),
      const DeepCollectionEquality().hash(_songList),
      const DeepCollectionEquality().hash(loopType),
      const DeepCollectionEquality().hash(_playRecord));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith =>
      __$$_PlayerStateCopyWithImpl<_$_PlayerState>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {final Song? playingSong,
      final SongDetail? songDetail,
      required final bool isPlaying,
      required final Duration duration,
      required final ViewModel<LyricResponse> lyricVM,
      required final List<Lyric> lyricList,
      required final List<Song> songList,
      required final LoopType loopType,
      required final List<Song> playRecord}) = _$_PlayerState;

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
  List<Song> get songList;
  @override
  LoopType get loopType;
  @override
  List<Song> get playRecord;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
