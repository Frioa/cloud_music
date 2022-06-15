import 'package:json_annotation/json_annotation.dart';

part 'music.g.dart';

@JsonSerializable(createToJson: false)
class Artist {
  final int id;
  final String cover;
  final String name;
  final String? picUrl;
  final String? img1v1Url;
  final Rank rank;

  // 专辑大小
  final int albumSize;
  final int musicSize;
  final int topicPerson;
  final int mvSize;

  const Artist({
    this.picUrl,
    this.cover = '',
    this.img1v1Url,
    this.rank = const Rank(),
    this.albumSize = 0,
    this.musicSize = 0,
    this.topicPerson = -1,
    this.id = -1,
    this.name = '',
    this.mvSize = -1,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Rank {
  final int rank;
  final int type;

  const Rank({
    this.rank = 0,
    this.type = 0,
  });

  factory Rank.fromJson(Map<String, dynamic> json) {
    return _$RankFromJson(json);
  }
}
