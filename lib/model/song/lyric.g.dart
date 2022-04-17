// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LyricResponse _$$_LyricResponseFromJson(Map<String, dynamic> json) =>
    _$_LyricResponse(
      sgc: json['sgc'] as bool?,
      sfy: json['sfy'] as bool?,
      qfy: json['qfy'] as bool?,
      code: json['code'] as int,
      lrc: Lrc.fromJson(json['lrc'] as Map<String, dynamic>),
      kLyric: Lrc.fromJson(json['klyric'] as Map<String, dynamic>),
      tLyric: Lrc.fromJson(json['tlyric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LyricResponseToJson(_$_LyricResponse instance) =>
    <String, dynamic>{
      'sgc': instance.sgc,
      'sfy': instance.sfy,
      'qfy': instance.qfy,
      'code': instance.code,
      'lrc': instance.lrc,
      'klyric': instance.kLyric,
      'tlyric': instance.tLyric,
    };

_$_Lrc _$$_LrcFromJson(Map<String, dynamic> json) => _$_Lrc(
      version: json['version'] as int,
      lyric: json['lyric'] as String,
    );

Map<String, dynamic> _$$_LrcToJson(_$_Lrc instance) => <String, dynamic>{
      'version': instance.version,
      'lyric': instance.lyric,
    };
