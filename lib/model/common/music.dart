import 'package:json_annotation/json_annotation.dart';

part 'music.g.dart';

@JsonSerializable(createToJson: false)
class Artist {
  final int id;
  final String name;
  final String? picUrl;
  final String? img1v1Url;

  // 专辑大小
  final int albumSize;
  final int musicSize;
  final int topicPerson;

  Artist({
    this.picUrl,
    this.img1v1Url,
    this.albumSize = 0,
    this.musicSize = 0,
    this.topicPerson = -1,
    this.id = -1,
    this.name = '',
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }
}
