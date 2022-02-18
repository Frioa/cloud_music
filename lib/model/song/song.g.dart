// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongUrlResponse _$SongUrlResponseFromJson(Map<String, dynamic> json) =>
    SongUrlResponse(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Song _$SongFromJson(Map<String, dynamic> json) => Song(
      id: json['id'] as int?,
      url: json['url'] as String?,
      br: json['br'] as int?,
      size: json['size'] as int?,
      md5: json['md5'] as String?,
      expi: json['expi'] as int?,
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      gain: json['gain'] as int?,
      fee: json['fee'] as int?,
      payed: json['payed'] as int?,
      flag: json['flag'] as int?,
      canExtend: json['canExtend'] as bool?,
      level: json['level'] as String?,
      encodeType: $enumDecodeNullable(_$EncodeTypeEnumMap, json['encodeType']),
      urlSource: json['urlSource'] as int?,
    );

const _$MediaTypeEnumMap = {
  MediaType.mp3: 'mp3',
};

const _$EncodeTypeEnumMap = {
  EncodeType.mp3: 'mp3',
};