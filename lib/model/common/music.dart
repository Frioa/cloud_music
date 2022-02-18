import 'package:json_annotation/json_annotation.dart';

part 'music.g.dart';


@JsonSerializable(createToJson: false)
class Artist {
  final int id;
  final String name;

  Artist({this.id = -1, this.name = ''});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }
}
