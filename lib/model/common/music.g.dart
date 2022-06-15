// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      picUrl: json['picUrl'] as String?,
      cover: json['cover'] as String? ?? '',
      img1v1Url: json['img1v1Url'] as String?,
      rank: json['rank'] == null
          ? const Rank()
          : Rank.fromJson(json['rank'] as Map<String, dynamic>),
      albumSize: json['albumSize'] as int? ?? 0,
      musicSize: json['musicSize'] as int? ?? 0,
      topicPerson: json['topicPerson'] as int? ?? -1,
      id: json['id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      mvSize: json['mvSize'] as int? ?? -1,
    );

Rank _$RankFromJson(Map<String, dynamic> json) => Rank(
      rank: json['rank'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
    );
