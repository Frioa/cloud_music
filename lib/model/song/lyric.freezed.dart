// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lyric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LyricResponse _$LyricResponseFromJson(Map<String, dynamic> json) {
  return _LyricResponse.fromJson(json);
}

/// @nodoc
mixin _$LyricResponse {
  bool? get sgc => throw _privateConstructorUsedError;
  bool? get sfy => throw _privateConstructorUsedError;
  bool? get qfy => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  Lrc? get lrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'klyric')
  Lrc? get kLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'tlyric')
  Lrc? get tLyric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricResponseCopyWith<LyricResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricResponseCopyWith<$Res> {
  factory $LyricResponseCopyWith(
          LyricResponse value, $Res Function(LyricResponse) then) =
      _$LyricResponseCopyWithImpl<$Res, LyricResponse>;
  @useResult
  $Res call(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      int code,
      Lrc? lrc,
      @JsonKey(name: 'klyric') Lrc? kLyric,
      @JsonKey(name: 'tlyric') Lrc? tLyric});

  $LrcCopyWith<$Res>? get lrc;
  $LrcCopyWith<$Res>? get kLyric;
  $LrcCopyWith<$Res>? get tLyric;
}

/// @nodoc
class _$LyricResponseCopyWithImpl<$Res, $Val extends LyricResponse>
    implements $LyricResponseCopyWith<$Res> {
  _$LyricResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sgc = freezed,
    Object? sfy = freezed,
    Object? qfy = freezed,
    Object? code = null,
    Object? lrc = freezed,
    Object? kLyric = freezed,
    Object? tLyric = freezed,
  }) {
    return _then(_value.copyWith(
      sgc: freezed == sgc
          ? _value.sgc
          : sgc // ignore: cast_nullable_to_non_nullable
              as bool?,
      sfy: freezed == sfy
          ? _value.sfy
          : sfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      qfy: freezed == qfy
          ? _value.qfy
          : qfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      lrc: freezed == lrc
          ? _value.lrc
          : lrc // ignore: cast_nullable_to_non_nullable
              as Lrc?,
      kLyric: freezed == kLyric
          ? _value.kLyric
          : kLyric // ignore: cast_nullable_to_non_nullable
              as Lrc?,
      tLyric: freezed == tLyric
          ? _value.tLyric
          : tLyric // ignore: cast_nullable_to_non_nullable
              as Lrc?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LrcCopyWith<$Res>? get lrc {
    if (_value.lrc == null) {
      return null;
    }

    return $LrcCopyWith<$Res>(_value.lrc!, (value) {
      return _then(_value.copyWith(lrc: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LrcCopyWith<$Res>? get kLyric {
    if (_value.kLyric == null) {
      return null;
    }

    return $LrcCopyWith<$Res>(_value.kLyric!, (value) {
      return _then(_value.copyWith(kLyric: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LrcCopyWith<$Res>? get tLyric {
    if (_value.tLyric == null) {
      return null;
    }

    return $LrcCopyWith<$Res>(_value.tLyric!, (value) {
      return _then(_value.copyWith(tLyric: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LyricResponseCopyWith<$Res>
    implements $LyricResponseCopyWith<$Res> {
  factory _$$_LyricResponseCopyWith(
          _$_LyricResponse value, $Res Function(_$_LyricResponse) then) =
      __$$_LyricResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      int code,
      Lrc? lrc,
      @JsonKey(name: 'klyric') Lrc? kLyric,
      @JsonKey(name: 'tlyric') Lrc? tLyric});

  @override
  $LrcCopyWith<$Res>? get lrc;
  @override
  $LrcCopyWith<$Res>? get kLyric;
  @override
  $LrcCopyWith<$Res>? get tLyric;
}

/// @nodoc
class __$$_LyricResponseCopyWithImpl<$Res>
    extends _$LyricResponseCopyWithImpl<$Res, _$_LyricResponse>
    implements _$$_LyricResponseCopyWith<$Res> {
  __$$_LyricResponseCopyWithImpl(
      _$_LyricResponse _value, $Res Function(_$_LyricResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sgc = freezed,
    Object? sfy = freezed,
    Object? qfy = freezed,
    Object? code = null,
    Object? lrc = freezed,
    Object? kLyric = freezed,
    Object? tLyric = freezed,
  }) {
    return _then(_$_LyricResponse(
      sgc: freezed == sgc
          ? _value.sgc
          : sgc // ignore: cast_nullable_to_non_nullable
              as bool?,
      sfy: freezed == sfy
          ? _value.sfy
          : sfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      qfy: freezed == qfy
          ? _value.qfy
          : qfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      lrc: freezed == lrc
          ? _value.lrc
          : lrc // ignore: cast_nullable_to_non_nullable
              as Lrc?,
      kLyric: freezed == kLyric
          ? _value.kLyric
          : kLyric // ignore: cast_nullable_to_non_nullable
              as Lrc?,
      tLyric: freezed == tLyric
          ? _value.tLyric
          : tLyric // ignore: cast_nullable_to_non_nullable
              as Lrc?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LyricResponse implements _LyricResponse {
  const _$_LyricResponse(
      {this.sgc,
      this.sfy,
      this.qfy,
      required this.code,
      this.lrc,
      @JsonKey(name: 'klyric') required this.kLyric,
      @JsonKey(name: 'tlyric') required this.tLyric});

  factory _$_LyricResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LyricResponseFromJson(json);

  @override
  final bool? sgc;
  @override
  final bool? sfy;
  @override
  final bool? qfy;
  @override
  final int code;
  @override
  final Lrc? lrc;
  @override
  @JsonKey(name: 'klyric')
  final Lrc? kLyric;
  @override
  @JsonKey(name: 'tlyric')
  final Lrc? tLyric;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LyricResponse &&
            (identical(other.sgc, sgc) || other.sgc == sgc) &&
            (identical(other.sfy, sfy) || other.sfy == sfy) &&
            (identical(other.qfy, qfy) || other.qfy == qfy) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.lrc, lrc) || other.lrc == lrc) &&
            (identical(other.kLyric, kLyric) || other.kLyric == kLyric) &&
            (identical(other.tLyric, tLyric) || other.tLyric == tLyric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sgc, sfy, qfy, code, lrc, kLyric, tLyric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LyricResponseCopyWith<_$_LyricResponse> get copyWith =>
      __$$_LyricResponseCopyWithImpl<_$_LyricResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LyricResponseToJson(
      this,
    );
  }
}

abstract class _LyricResponse implements LyricResponse {
  const factory _LyricResponse(
      {final bool? sgc,
      final bool? sfy,
      final bool? qfy,
      required final int code,
      final Lrc? lrc,
      @JsonKey(name: 'klyric') required final Lrc? kLyric,
      @JsonKey(name: 'tlyric') required final Lrc? tLyric}) = _$_LyricResponse;

  factory _LyricResponse.fromJson(Map<String, dynamic> json) =
      _$_LyricResponse.fromJson;

  @override
  bool? get sgc;
  @override
  bool? get sfy;
  @override
  bool? get qfy;
  @override
  int get code;
  @override
  Lrc? get lrc;
  @override
  @JsonKey(name: 'klyric')
  Lrc? get kLyric;
  @override
  @JsonKey(name: 'tlyric')
  Lrc? get tLyric;
  @override
  @JsonKey(ignore: true)
  _$$_LyricResponseCopyWith<_$_LyricResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Lrc _$LrcFromJson(Map<String, dynamic> json) {
  return _Lrc.fromJson(json);
}

/// @nodoc
mixin _$Lrc {
  int get version => throw _privateConstructorUsedError;
  String get lyric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LrcCopyWith<Lrc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LrcCopyWith<$Res> {
  factory $LrcCopyWith(Lrc value, $Res Function(Lrc) then) =
      _$LrcCopyWithImpl<$Res, Lrc>;
  @useResult
  $Res call({int version, String lyric});
}

/// @nodoc
class _$LrcCopyWithImpl<$Res, $Val extends Lrc> implements $LrcCopyWith<$Res> {
  _$LrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? lyric = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: null == lyric
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LrcCopyWith<$Res> implements $LrcCopyWith<$Res> {
  factory _$$_LrcCopyWith(_$_Lrc value, $Res Function(_$_Lrc) then) =
      __$$_LrcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int version, String lyric});
}

/// @nodoc
class __$$_LrcCopyWithImpl<$Res> extends _$LrcCopyWithImpl<$Res, _$_Lrc>
    implements _$$_LrcCopyWith<$Res> {
  __$$_LrcCopyWithImpl(_$_Lrc _value, $Res Function(_$_Lrc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? lyric = null,
  }) {
    return _then(_$_Lrc(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: null == lyric
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lrc implements _Lrc {
  const _$_Lrc({required this.version, required this.lyric});

  factory _$_Lrc.fromJson(Map<String, dynamic> json) => _$$_LrcFromJson(json);

  @override
  final int version;
  @override
  final String lyric;

  @override
  String toString() {
    return 'Lrc(version: $version, lyric: $lyric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lrc &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lyric, lyric) || other.lyric == lyric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, lyric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LrcCopyWith<_$_Lrc> get copyWith =>
      __$$_LrcCopyWithImpl<_$_Lrc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LrcToJson(
      this,
    );
  }
}

abstract class _Lrc implements Lrc {
  const factory _Lrc(
      {required final int version, required final String lyric}) = _$_Lrc;

  factory _Lrc.fromJson(Map<String, dynamic> json) = _$_Lrc.fromJson;

  @override
  int get version;
  @override
  String get lyric;
  @override
  @JsonKey(ignore: true)
  _$$_LrcCopyWith<_$_Lrc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Lyric {
  Duration get time => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LyricCopyWith<Lyric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricCopyWith<$Res> {
  factory $LyricCopyWith(Lyric value, $Res Function(Lyric) then) =
      _$LyricCopyWithImpl<$Res, Lyric>;
  @useResult
  $Res call({Duration time, String content, double height});
}

/// @nodoc
class _$LyricCopyWithImpl<$Res, $Val extends Lyric>
    implements $LyricCopyWith<$Res> {
  _$LyricCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? content = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LyricCopyWith<$Res> implements $LyricCopyWith<$Res> {
  factory _$$_LyricCopyWith(_$_Lyric value, $Res Function(_$_Lyric) then) =
      __$$_LyricCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration time, String content, double height});
}

/// @nodoc
class __$$_LyricCopyWithImpl<$Res> extends _$LyricCopyWithImpl<$Res, _$_Lyric>
    implements _$$_LyricCopyWith<$Res> {
  __$$_LyricCopyWithImpl(_$_Lyric _value, $Res Function(_$_Lyric) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? content = null,
    Object? height = null,
  }) {
    return _then(_$_Lyric(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Lyric implements _Lyric {
  const _$_Lyric(
      {required this.time, required this.content, required this.height});

  @override
  final Duration time;
  @override
  final String content;
  @override
  final double height;

  @override
  String toString() {
    return 'Lyric(time: $time, content: $content, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lyric &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, content, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LyricCopyWith<_$_Lyric> get copyWith =>
      __$$_LyricCopyWithImpl<_$_Lyric>(this, _$identity);
}

abstract class _Lyric implements Lyric {
  const factory _Lyric(
      {required final Duration time,
      required final String content,
      required final double height}) = _$_Lyric;

  @override
  Duration get time;
  @override
  String get content;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$_LyricCopyWith<_$_Lyric> get copyWith =>
      throw _privateConstructorUsedError;
}
