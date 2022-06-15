import 'package:cloud_music/common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top.g.dart';

@JsonSerializable(createToJson: false)
class TopArtistsResponse extends BaseHttpResponse {
  final bool more;
  final List<Artist> artists;

  TopArtistsResponse({
    int code = 404,
    this.more = false,
    this.artists = const [],
  }) : super(code);

  factory TopArtistsResponse.fromJson(Map<String, dynamic> json) {
    return _$TopArtistsResponseFromJson(json);
  }
}
