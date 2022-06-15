import 'package:cloud_music/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mv_detail.g.dart';

@CopyWith()
@JsonSerializable(createToJson: false)
class MvDetailResponse {
  final int id;
  final String name;
  final int artistId;
  final String artistName;
  final String briefDesc;
  final String desc;
  final String cover;
  @JsonKey(name: "coverId_str")
  final String coverIdStr;
  final int coverId;
  final int playCount;
  final int subCount;
  final int shareCount;
  final int likedCount;
  final bool liked;
  final int commentCount;
  final int duration;
  final int nType;
  final String publishTime;

  // final price;
  // 分辨率
  final List<Br> brs;
  final List<Artist> artists;
  final List<Group> videoGroup;

  const MvDetailResponse({
    this.id = -1,
    this.name = '',
    this.artistId = -1,
    this.artistName = '',
    this.briefDesc = '',
    this.desc = '',
    this.cover = '',
    this.coverIdStr = '',
    this.coverId = -1,
    this.playCount = 0,
    this.subCount = 0,
    this.shareCount = 0,
    this.commentCount = 0,
    this.duration = 0,
    this.likedCount = 0,
    this.liked = false,
    this.nType = 0,
    this.publishTime = '',
    this.brs = const [],
    this.artists = const [],
    this.videoGroup = const [],
  });

  factory MvDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$MvDetailResponseFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Br {
  final int size;
  final int br;

  final int point;

  const Br({
    this.size = 0,
    this.br = 0,
    this.point = 0,
  });

  factory Br.fromJson(Map<String, dynamic> json) {
    return _$BrFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Group {
  final int id;
  final String name;
  final int type;

  const Group({this.id = -1, this.name = '', this.type = -1});

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@JsonSerializable(createToJson: false)
class MvInfo extends BaseHttpResponse {
  final int likedCount;
  final int shareCount;
  final int commentCount;
  final bool liked;

  MvInfo({
    this.likedCount = 0,
    this.shareCount = 0,
    this.commentCount = 0,
    this.liked = false,
  }) : super(200);

  factory MvInfo.fromJson(Map<String, dynamic> json) => _$MvInfoFromJson(json);
}
