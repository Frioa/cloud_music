// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$playSongCopyWith<$Res> {
  factory _$$$playSongCopyWith(
          _$$playSong value, $Res Function(_$$playSong) then) =
      __$$$playSongCopyWithImpl<$Res>;
  @useResult
  $Res call({Song song, List<Song> songList});
}

/// @nodoc
class __$$$playSongCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$playSong>
    implements _$$$playSongCopyWith<$Res> {
  __$$$playSongCopyWithImpl(
      _$$playSong _value, $Res Function(_$$playSong) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? songList = null,
  }) {
    return _then(_$$playSong(
      null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$$playSong implements $playSong {
  const _$$playSong(this.song, final List<Song> songList)
      : _songList = songList;

  @override
  final Song song;
  final List<Song> _songList;
  @override
  List<Song> get songList {
    if (_songList is EqualUnmodifiableListView) return _songList;
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
            other is _$$playSong &&
            (identical(other.song, song) || other.song == song) &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, song, const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$playSongCopyWith<_$$playSong> get copyWith =>
      __$$$playSongCopyWithImpl<_$$playSong>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return song(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return song?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (song != null) {
      return song(this);
    }
    return orElse();
  }
}

abstract class $playSong implements PlayerEvent {
  const factory $playSong(final Song song, final List<Song> songList) =
      _$$playSong;

  Song get song;
  List<Song> get songList;
  @JsonKey(ignore: true)
  _$$$playSongCopyWith<_$$playSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$songDetailCopyWith<$Res> {
  factory _$$$songDetailCopyWith(
          _$$songDetail value, $Res Function(_$$songDetail) then) =
      __$$$songDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({SongDetail songDetail});
}

/// @nodoc
class __$$$songDetailCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$songDetail>
    implements _$$$songDetailCopyWith<$Res> {
  __$$$songDetailCopyWithImpl(
      _$$songDetail _value, $Res Function(_$$songDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songDetail = null,
  }) {
    return _then(_$$songDetail(
      null == songDetail
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail,
    ));
  }
}

/// @nodoc

class _$$songDetail implements $songDetail {
  const _$$songDetail(this.songDetail);

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
            other is _$$songDetail &&
            (identical(other.songDetail, songDetail) ||
                other.songDetail == songDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$songDetailCopyWith<_$$songDetail> get copyWith =>
      __$$$songDetailCopyWithImpl<_$$songDetail>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return songDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return songDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (songDetail != null) {
      return songDetail(this);
    }
    return orElse();
  }
}

abstract class $songDetail implements PlayerEvent {
  const factory $songDetail(final SongDetail songDetail) = _$$songDetail;

  SongDetail get songDetail;
  @JsonKey(ignore: true)
  _$$$songDetailCopyWith<_$$songDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$isPlayingCopyWith<$Res> {
  factory _$$$isPlayingCopyWith(
          _$$isPlaying value, $Res Function(_$$isPlaying) then) =
      __$$$isPlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$$isPlayingCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$isPlaying>
    implements _$$$isPlayingCopyWith<$Res> {
  __$$$isPlayingCopyWithImpl(
      _$$isPlaying _value, $Res Function(_$$isPlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_$$isPlaying(
      null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$$isPlaying implements $isPlaying {
  const _$$isPlaying(this.isPlaying);

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
            other is _$$isPlaying &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$isPlayingCopyWith<_$$isPlaying> get copyWith =>
      __$$$isPlayingCopyWithImpl<_$$isPlaying>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return isPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return isPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (isPlaying != null) {
      return isPlaying(this);
    }
    return orElse();
  }
}

abstract class $isPlaying implements PlayerEvent {
  const factory $isPlaying(final bool isPlaying) = _$$isPlaying;

  bool get isPlaying;
  @JsonKey(ignore: true)
  _$$$isPlayingCopyWith<_$$isPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$durationCopyWith<$Res> {
  factory _$$$durationCopyWith(
          _$$duration value, $Res Function(_$$duration) then) =
      __$$$durationCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$$durationCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$duration>
    implements _$$$durationCopyWith<$Res> {
  __$$$durationCopyWithImpl(
      _$$duration _value, $Res Function(_$$duration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$$duration(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$$duration implements $duration {
  const _$$duration(this.duration);

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
            other is _$$duration &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$durationCopyWith<_$$duration> get copyWith =>
      __$$$durationCopyWithImpl<_$$duration>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }
}

abstract class $duration implements PlayerEvent {
  const factory $duration(final Duration duration) = _$$duration;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$$durationCopyWith<_$$duration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$lyricCopyWith<$Res> {
  factory _$$lyricCopyWith(_$lyric value, $Res Function(_$lyric) then) =
      __$$lyricCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$lyricCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$lyric>
    implements _$$lyricCopyWith<$Res> {
  __$$lyricCopyWithImpl(_$lyric _value, $Res Function(_$lyric) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$lyric(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$lyric implements lyric {
  const _$lyric(this.id);

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
            other is _$lyric &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$lyricCopyWith<_$lyric> get copyWith =>
      __$$lyricCopyWithImpl<_$lyric>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return lyric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return lyric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (lyric != null) {
      return lyric(this);
    }
    return orElse();
  }
}

abstract class lyric implements PlayerEvent {
  const factory lyric(final int id) = _$lyric;

  int get id;
  @JsonKey(ignore: true)
  _$$lyricCopyWith<_$lyric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$songListCopyWith<$Res> {
  factory _$$$songListCopyWith(
          _$$songList value, $Res Function(_$$songList) then) =
      __$$$songListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Song> list});
}

/// @nodoc
class __$$$songListCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$songList>
    implements _$$$songListCopyWith<$Res> {
  __$$$songListCopyWithImpl(
      _$$songList _value, $Res Function(_$$songList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$$songList(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$$songList implements $songList {
  const _$$songList(final List<Song> list) : _list = list;

  final List<Song> _list;
  @override
  List<Song> get list {
    if (_list is EqualUnmodifiableListView) return _list;
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
            other is _$$songList &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$songListCopyWith<_$$songList> get copyWith =>
      __$$$songListCopyWithImpl<_$$songList>(this, _$identity);

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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return songList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return songList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (songList != null) {
      return songList(this);
    }
    return orElse();
  }
}

abstract class $songList implements PlayerEvent {
  const factory $songList(final List<Song> list) = _$$songList;

  List<Song> get list;
  @JsonKey(ignore: true)
  _$$$songListCopyWith<_$$songList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$nextSongCopyWith<$Res> {
  factory _$$$nextSongCopyWith(
          _$$nextSong value, $Res Function(_$$nextSong) then) =
      __$$$nextSongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$nextSongCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$nextSong>
    implements _$$$nextSongCopyWith<$Res> {
  __$$$nextSongCopyWithImpl(
      _$$nextSong _value, $Res Function(_$$nextSong) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$nextSong implements $nextSong {
  const _$$nextSong();

  @override
  String toString() {
    return 'PlayerEvent.nextSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$nextSong);
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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return nextSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return nextSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (nextSong != null) {
      return nextSong(this);
    }
    return orElse();
  }
}

abstract class $nextSong implements PlayerEvent {
  const factory $nextSong() = _$$nextSong;
}

/// @nodoc
abstract class _$$$preSongCopyWith<$Res> {
  factory _$$$preSongCopyWith(
          _$$preSong value, $Res Function(_$$preSong) then) =
      __$$$preSongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$preSongCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$$preSong>
    implements _$$$preSongCopyWith<$Res> {
  __$$$preSongCopyWithImpl(_$$preSong _value, $Res Function(_$$preSong) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$preSong implements $preSong {
  const _$$preSong();

  @override
  String toString() {
    return 'PlayerEvent.preSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$preSong);
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
    TResult? Function(Song song, List<Song> songList)? song,
    TResult? Function(SongDetail songDetail)? songDetail,
    TResult? Function(bool isPlaying)? isPlaying,
    TResult? Function(Duration duration)? duration,
    TResult? Function(int id)? lyric,
    TResult? Function(List<Song> list)? songList,
    TResult? Function()? nextSong,
    TResult? Function()? preSong,
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
    required TResult Function($playSong value) song,
    required TResult Function($songDetail value) songDetail,
    required TResult Function($isPlaying value) isPlaying,
    required TResult Function($duration value) duration,
    required TResult Function(lyric value) lyric,
    required TResult Function($songList value) songList,
    required TResult Function($nextSong value) nextSong,
    required TResult Function($preSong value) preSong,
  }) {
    return preSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($playSong value)? song,
    TResult? Function($songDetail value)? songDetail,
    TResult? Function($isPlaying value)? isPlaying,
    TResult? Function($duration value)? duration,
    TResult? Function(lyric value)? lyric,
    TResult? Function($songList value)? songList,
    TResult? Function($nextSong value)? nextSong,
    TResult? Function($preSong value)? preSong,
  }) {
    return preSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($playSong value)? song,
    TResult Function($songDetail value)? songDetail,
    TResult Function($isPlaying value)? isPlaying,
    TResult Function($duration value)? duration,
    TResult Function(lyric value)? lyric,
    TResult Function($songList value)? songList,
    TResult Function($nextSong value)? nextSong,
    TResult Function($preSong value)? preSong,
    required TResult orElse(),
  }) {
    if (preSong != null) {
      return preSong(this);
    }
    return orElse();
  }
}

abstract class $preSong implements PlayerEvent {
  const factory $preSong() = _$$preSong;
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
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
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
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playingSong = freezed,
    Object? songDetail = freezed,
    Object? isPlaying = null,
    Object? duration = null,
    Object? lyricVM = null,
    Object? lyricList = null,
    Object? songList = null,
    Object? loopType = null,
    Object? playRecord = null,
  }) {
    return _then(_value.copyWith(
      playingSong: freezed == playingSong
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      songDetail: freezed == songDetail
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lyricVM: null == lyricVM
          ? _value.lyricVM
          : lyricVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<LyricResponse>,
      lyricList: null == lyricList
          ? _value.lyricList
          : lyricList // ignore: cast_nullable_to_non_nullable
              as List<Lyric>,
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      loopType: null == loopType
          ? _value.loopType
          : loopType // ignore: cast_nullable_to_non_nullable
              as LoopType,
      playRecord: null == playRecord
          ? _value.playRecord
          : playRecord // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerStateCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$_PlayerStateCopyWith(
          _$_PlayerState value, $Res Function(_$_PlayerState) then) =
      __$$_PlayerStateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_PlayerStateCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$_PlayerState>
    implements _$$_PlayerStateCopyWith<$Res> {
  __$$_PlayerStateCopyWithImpl(
      _$_PlayerState _value, $Res Function(_$_PlayerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playingSong = freezed,
    Object? songDetail = freezed,
    Object? isPlaying = null,
    Object? duration = null,
    Object? lyricVM = null,
    Object? lyricList = null,
    Object? songList = null,
    Object? loopType = null,
    Object? playRecord = null,
  }) {
    return _then(_$_PlayerState(
      playingSong: freezed == playingSong
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      songDetail: freezed == songDetail
          ? _value.songDetail
          : songDetail // ignore: cast_nullable_to_non_nullable
              as SongDetail?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      lyricVM: null == lyricVM
          ? _value.lyricVM
          : lyricVM // ignore: cast_nullable_to_non_nullable
              as ViewModel<LyricResponse>,
      lyricList: null == lyricList
          ? _value._lyricList
          : lyricList // ignore: cast_nullable_to_non_nullable
              as List<Lyric>,
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      loopType: null == loopType
          ? _value.loopType
          : loopType // ignore: cast_nullable_to_non_nullable
              as LoopType,
      playRecord: null == playRecord
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
    if (_lyricList is EqualUnmodifiableListView) return _lyricList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lyricList);
  }

  final List<Song> _songList;
  @override
  List<Song> get songList {
    if (_songList is EqualUnmodifiableListView) return _songList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  final LoopType loopType;
  final List<Song> _playRecord;
  @override
  List<Song> get playRecord {
    if (_playRecord is EqualUnmodifiableListView) return _playRecord;
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
            (identical(other.playingSong, playingSong) ||
                other.playingSong == playingSong) &&
            (identical(other.songDetail, songDetail) ||
                other.songDetail == songDetail) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.lyricVM, lyricVM) || other.lyricVM == lyricVM) &&
            const DeepCollectionEquality()
                .equals(other._lyricList, _lyricList) &&
            const DeepCollectionEquality().equals(other._songList, _songList) &&
            (identical(other.loopType, loopType) ||
                other.loopType == loopType) &&
            const DeepCollectionEquality()
                .equals(other._playRecord, _playRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      playingSong,
      songDetail,
      isPlaying,
      duration,
      lyricVM,
      const DeepCollectionEquality().hash(_lyricList),
      const DeepCollectionEquality().hash(_songList),
      loopType,
      const DeepCollectionEquality().hash(_playRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
