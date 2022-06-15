// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistsDetailResponse _$ArtistsDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ArtistsDetailResponse(
      videoCount: json['videoCount'] as int? ?? 0,
      identify: json['identify'] == null
          ? const Identify()
          : Identify.fromJson(json['identify'] as Map<String, dynamic>),
      artist: json['artist'] == null
          ? const Artist()
          : Artist.fromJson(json['artist'] as Map<String, dynamic>),
      blacklist: json['blacklist'] as bool? ?? false,
      preferShow: json['preferShow'] as int? ?? -1,
      showPriMsg: json['showPriMsg'] as bool? ?? false,
    );

Identify _$IdentifyFromJson(Map<String, dynamic> json) => Identify(
      imageUrl: json['imageUrl'] as String? ?? '',
      imageDesc: json['imageDesc'] as String? ?? '',
      actionUrl: json['actionUrl'] as String? ?? '',
    );
