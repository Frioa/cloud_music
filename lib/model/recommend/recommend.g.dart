// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailySongResponse _$DailySongResponseFromJson(Map<String, dynamic> json) =>
    DailySongResponse(
      dailySongs: (json['dailySongs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendReasons: (json['recommendReasons'] as List<dynamic>?)
              ?.map((e) => RecommendReason.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Song _$SongFromJson(Map<String, dynamic> json) => Song(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      pst: json['pst'] as int?,
      t: json['t'] as int?,
      ar: (json['ar'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pop: json['pop'] as int?,
      rt: json['rt'] as String?,
      fee: json['fee'] as int?,
      v: json['v'] as int?,
      cf: json['cf'] as String?,
      al: json['al'] == null
          ? null
          : AL.fromJson(json['al'] as Map<String, dynamic>),
      dt: json['dt'] as int?,
      rtUrl: json['rtUrl'] as String?,
      ftype: json['ftype'] as int?,
      djId: json['djId'] as int?,
      copyright: json['copyright'] as int?,
      reason: json['reason'] as String?,
      mv: json['mv'] as int? ?? 0,
    );

AL _$ALFromJson(Map<String, dynamic> json) => AL(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      picUrl: json['picUrl'] as String?,
      pic_str: json['pic_str'] as String?,
      pic: json['pic'] as int?,
    );

RecommendReason _$RecommendReasonFromJson(Map<String, dynamic> json) =>
    RecommendReason(
      songId: json['songId'] as int? ?? 0,
      reason: json['reason'] as String? ?? '',
    );
