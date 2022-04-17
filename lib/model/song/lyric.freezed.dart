// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lyric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LyricResponse _$LyricResponseFromJson(Map<String, dynamic> json) {
  return _LyricResponse.fromJson(json);
}

/// @nodoc
class _$LyricResponseTearOff {
  const _$LyricResponseTearOff();

  _LyricResponse call(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      required int code,
      required Lrc lrc,
      @JsonKey(name: 'klyric') required Lrc kLyric,
      @JsonKey(name: 'tlyric') required Lrc tLyric}) {
    return _LyricResponse(
      sgc: sgc,
      sfy: sfy,
      qfy: qfy,
      code: code,
      lrc: lrc,
      kLyric: kLyric,
      tLyric: tLyric,
    );
  }

  LyricResponse fromJson(Map<String, Object?> json) {
    return LyricResponse.fromJson(json);
  }
}

/// @nodoc
const $LyricResponse = _$LyricResponseTearOff();

/// @nodoc
mixin _$LyricResponse {
  bool? get sgc => throw _privateConstructorUsedError;
  bool? get sfy => throw _privateConstructorUsedError;
  bool? get qfy => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  Lrc get lrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'klyric')
  Lrc get kLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'tlyric')
  Lrc get tLyric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricResponseCopyWith<LyricResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricResponseCopyWith<$Res> {
  factory $LyricResponseCopyWith(
          LyricResponse value, $Res Function(LyricResponse) then) =
      _$LyricResponseCopyWithImpl<$Res>;
  $Res call(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      int code,
      Lrc lrc,
      @JsonKey(name: 'klyric') Lrc kLyric,
      @JsonKey(name: 'tlyric') Lrc tLyric});

  $LrcCopyWith<$Res> get lrc;
  $LrcCopyWith<$Res> get kLyric;
  $LrcCopyWith<$Res> get tLyric;
}

/// @nodoc
class _$LyricResponseCopyWithImpl<$Res>
    implements $LyricResponseCopyWith<$Res> {
  _$LyricResponseCopyWithImpl(this._value, this._then);

  final LyricResponse _value;
  // ignore: unused_field
  final $Res Function(LyricResponse) _then;

  @override
  $Res call({
    Object? sgc = freezed,
    Object? sfy = freezed,
    Object? qfy = freezed,
    Object? code = freezed,
    Object? lrc = freezed,
    Object? kLyric = freezed,
    Object? tLyric = freezed,
  }) {
    return _then(_value.copyWith(
      sgc: sgc == freezed
          ? _value.sgc
          : sgc // ignore: cast_nullable_to_non_nullable
              as bool?,
      sfy: sfy == freezed
          ? _value.sfy
          : sfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      qfy: qfy == freezed
          ? _value.qfy
          : qfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      lrc: lrc == freezed
          ? _value.lrc
          : lrc // ignore: cast_nullable_to_non_nullable
              as Lrc,
      kLyric: kLyric == freezed
          ? _value.kLyric
          : kLyric // ignore: cast_nullable_to_non_nullable
              as Lrc,
      tLyric: tLyric == freezed
          ? _value.tLyric
          : tLyric // ignore: cast_nullable_to_non_nullable
              as Lrc,
    ));
  }

  @override
  $LrcCopyWith<$Res> get lrc {
    return $LrcCopyWith<$Res>(_value.lrc, (value) {
      return _then(_value.copyWith(lrc: value));
    });
  }

  @override
  $LrcCopyWith<$Res> get kLyric {
    return $LrcCopyWith<$Res>(_value.kLyric, (value) {
      return _then(_value.copyWith(kLyric: value));
    });
  }

  @override
  $LrcCopyWith<$Res> get tLyric {
    return $LrcCopyWith<$Res>(_value.tLyric, (value) {
      return _then(_value.copyWith(tLyric: value));
    });
  }
}

/// @nodoc
abstract class _$LyricResponseCopyWith<$Res>
    implements $LyricResponseCopyWith<$Res> {
  factory _$LyricResponseCopyWith(
          _LyricResponse value, $Res Function(_LyricResponse) then) =
      __$LyricResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      int code,
      Lrc lrc,
      @JsonKey(name: 'klyric') Lrc kLyric,
      @JsonKey(name: 'tlyric') Lrc tLyric});

  @override
  $LrcCopyWith<$Res> get lrc;
  @override
  $LrcCopyWith<$Res> get kLyric;
  @override
  $LrcCopyWith<$Res> get tLyric;
}

/// @nodoc
class __$LyricResponseCopyWithImpl<$Res>
    extends _$LyricResponseCopyWithImpl<$Res>
    implements _$LyricResponseCopyWith<$Res> {
  __$LyricResponseCopyWithImpl(
      _LyricResponse _value, $Res Function(_LyricResponse) _then)
      : super(_value, (v) => _then(v as _LyricResponse));

  @override
  _LyricResponse get _value => super._value as _LyricResponse;

  @override
  $Res call({
    Object? sgc = freezed,
    Object? sfy = freezed,
    Object? qfy = freezed,
    Object? code = freezed,
    Object? lrc = freezed,
    Object? kLyric = freezed,
    Object? tLyric = freezed,
  }) {
    return _then(_LyricResponse(
      sgc: sgc == freezed
          ? _value.sgc
          : sgc // ignore: cast_nullable_to_non_nullable
              as bool?,
      sfy: sfy == freezed
          ? _value.sfy
          : sfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      qfy: qfy == freezed
          ? _value.qfy
          : qfy // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      lrc: lrc == freezed
          ? _value.lrc
          : lrc // ignore: cast_nullable_to_non_nullable
              as Lrc,
      kLyric: kLyric == freezed
          ? _value.kLyric
          : kLyric // ignore: cast_nullable_to_non_nullable
              as Lrc,
      tLyric: tLyric == freezed
          ? _value.tLyric
          : tLyric // ignore: cast_nullable_to_non_nullable
              as Lrc,
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
      required this.lrc,
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
  final Lrc lrc;
  @override
  @JsonKey(name: 'klyric')
  final Lrc kLyric;
  @override
  @JsonKey(name: 'tlyric')
  final Lrc tLyric;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LyricResponse &&
            const DeepCollectionEquality().equals(other.sgc, sgc) &&
            const DeepCollectionEquality().equals(other.sfy, sfy) &&
            const DeepCollectionEquality().equals(other.qfy, qfy) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.lrc, lrc) &&
            const DeepCollectionEquality().equals(other.kLyric, kLyric) &&
            const DeepCollectionEquality().equals(other.tLyric, tLyric));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sgc),
      const DeepCollectionEquality().hash(sfy),
      const DeepCollectionEquality().hash(qfy),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(lrc),
      const DeepCollectionEquality().hash(kLyric),
      const DeepCollectionEquality().hash(tLyric));

  @JsonKey(ignore: true)
  @override
  _$LyricResponseCopyWith<_LyricResponse> get copyWith =>
      __$LyricResponseCopyWithImpl<_LyricResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LyricResponseToJson(this);
  }
}

abstract class _LyricResponse implements LyricResponse {
  const factory _LyricResponse(
      {bool? sgc,
      bool? sfy,
      bool? qfy,
      required int code,
      required Lrc lrc,
      @JsonKey(name: 'klyric') required Lrc kLyric,
      @JsonKey(name: 'tlyric') required Lrc tLyric}) = _$_LyricResponse;

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
  Lrc get lrc;
  @override
  @JsonKey(name: 'klyric')
  Lrc get kLyric;
  @override
  @JsonKey(name: 'tlyric')
  Lrc get tLyric;
  @override
  @JsonKey(ignore: true)
  _$LyricResponseCopyWith<_LyricResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Lrc _$LrcFromJson(Map<String, dynamic> json) {
  return _Lrc.fromJson(json);
}

/// @nodoc
class _$LrcTearOff {
  const _$LrcTearOff();

  _Lrc call({required int version, required String lyric}) {
    return _Lrc(
      version: version,
      lyric: lyric,
    );
  }

  Lrc fromJson(Map<String, Object?> json) {
    return Lrc.fromJson(json);
  }
}

/// @nodoc
const $Lrc = _$LrcTearOff();

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
      _$LrcCopyWithImpl<$Res>;
  $Res call({int version, String lyric});
}

/// @nodoc
class _$LrcCopyWithImpl<$Res> implements $LrcCopyWith<$Res> {
  _$LrcCopyWithImpl(this._value, this._then);

  final Lrc _value;
  // ignore: unused_field
  final $Res Function(Lrc) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? lyric = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: lyric == freezed
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LrcCopyWith<$Res> implements $LrcCopyWith<$Res> {
  factory _$LrcCopyWith(_Lrc value, $Res Function(_Lrc) then) =
      __$LrcCopyWithImpl<$Res>;
  @override
  $Res call({int version, String lyric});
}

/// @nodoc
class __$LrcCopyWithImpl<$Res> extends _$LrcCopyWithImpl<$Res>
    implements _$LrcCopyWith<$Res> {
  __$LrcCopyWithImpl(_Lrc _value, $Res Function(_Lrc) _then)
      : super(_value, (v) => _then(v as _Lrc));

  @override
  _Lrc get _value => super._value as _Lrc;

  @override
  $Res call({
    Object? version = freezed,
    Object? lyric = freezed,
  }) {
    return _then(_Lrc(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: lyric == freezed
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
            other is _Lrc &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.lyric, lyric));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(lyric));

  @JsonKey(ignore: true)
  @override
  _$LrcCopyWith<_Lrc> get copyWith =>
      __$LrcCopyWithImpl<_Lrc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LrcToJson(this);
  }
}

abstract class _Lrc implements Lrc {
  const factory _Lrc({required int version, required String lyric}) = _$_Lrc;

  factory _Lrc.fromJson(Map<String, dynamic> json) = _$_Lrc.fromJson;

  @override
  int get version;
  @override
  String get lyric;
  @override
  @JsonKey(ignore: true)
  _$LrcCopyWith<_Lrc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LyricTearOff {
  const _$LyricTearOff();

  _Lyric call(
      {required Duration time,
      required String content,
      required double height}) {
    return _Lyric(
      time: time,
      content: content,
      height: height,
    );
  }
}

/// @nodoc
const $Lyric = _$LyricTearOff();

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
      _$LyricCopyWithImpl<$Res>;
  $Res call({Duration time, String content, double height});
}

/// @nodoc
class _$LyricCopyWithImpl<$Res> implements $LyricCopyWith<$Res> {
  _$LyricCopyWithImpl(this._value, this._then);

  final Lyric _value;
  // ignore: unused_field
  final $Res Function(Lyric) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? content = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LyricCopyWith<$Res> implements $LyricCopyWith<$Res> {
  factory _$LyricCopyWith(_Lyric value, $Res Function(_Lyric) then) =
      __$LyricCopyWithImpl<$Res>;
  @override
  $Res call({Duration time, String content, double height});
}

/// @nodoc
class __$LyricCopyWithImpl<$Res> extends _$LyricCopyWithImpl<$Res>
    implements _$LyricCopyWith<$Res> {
  __$LyricCopyWithImpl(_Lyric _value, $Res Function(_Lyric) _then)
      : super(_value, (v) => _then(v as _Lyric));

  @override
  _Lyric get _value => super._value as _Lyric;

  @override
  $Res call({
    Object? time = freezed,
    Object? content = freezed,
    Object? height = freezed,
  }) {
    return _then(_Lyric(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
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
            other is _Lyric &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$LyricCopyWith<_Lyric> get copyWith =>
      __$LyricCopyWithImpl<_Lyric>(this, _$identity);
}

abstract class _Lyric implements Lyric {
  const factory _Lyric(
      {required Duration time,
      required String content,
      required double height}) = _$_Lyric;

  @override
  Duration get time;
  @override
  String get content;
  @override
  double get height;
  @override
  @JsonKey(ignore: true)
  _$LyricCopyWith<_Lyric> get copyWith => throw _privateConstructorUsedError;
}