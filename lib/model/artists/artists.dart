import 'package:cloud_music/model/common/music.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists.g.dart';

@JsonSerializable(createToJson: false)
class ArtistsDetailResponse {
  final int videoCount;
  final Identify identify;
  final Artist artist;
  final bool blacklist;
  final int preferShow;
  final bool showPriMsg;

  ArtistsDetailResponse({
    this.videoCount = 0,
    this.identify = const Identify(),
    this.artist = const Artist(),
    this.blacklist = false,
    this.preferShow = -1,
    this.showPriMsg = false,
  });

  factory ArtistsDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$ArtistsDetailResponseFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Identify {
  final String imageUrl;
  final String imageDesc;
  final String actionUrl;

  const Identify({
    this.imageUrl = '',
    this.imageDesc = '',
    this.actionUrl = '',
  });

  factory Identify.fromJson(Map<String, dynamic> json) {
    return _$IdentifyFromJson(json);
  }
}
