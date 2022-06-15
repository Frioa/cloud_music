// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopArtistsResponse _$TopArtistsResponseFromJson(Map<String, dynamic> json) =>
    TopArtistsResponse(
      code: json['code'] as int? ?? 404,
      more: json['more'] as bool? ?? false,
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
