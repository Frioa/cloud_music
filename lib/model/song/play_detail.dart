import 'package:cloud_music/common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'play_detail.g.dart';

@JsonSerializable(createToJson: false)
class PlayDetailResponse extends BaseHttpResponse {
  final String? urls;
  final PlayerList? playlist;

  PlayDetailResponse({int code = 404, this.playlist, this.urls}) : super(code);

  factory PlayDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$PlayDetailResponseFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class PlayerList {
  final int id;
  final String name;
  final String coverImgUrl;
  final int? userId;
  final int? createTime;
  final int? status;
  final bool? opRecommend;
  final bool? highQuality;
  final bool? newImported;
  final int? updateTime;

  // 歌曲数量
  final int trackCount;
  final int? specialType;
  final int? privacy;
  final int? trackUpdateTime;
  final String commentThreadId;

  // 播放数量
  final int playCount;

  final int trackNumberUpdateTime;

  // 收藏数
  final int subscribedCount;

  final int? cloudTrackCount;
  final bool? ordered;
  final String? description;
  final List<String> tags;
  final String? updateFrequency;
  final int? backgroundCoverId;
  final int? titleImage;
  final String? titleImageUrl;
  final String? englishTitle;
  final PlayerListCreator? creator;
  final List<PlayerListTrack>? tracks;
  final int shareCount;
  final int commentCount;

  PlayerList(
    this.id,
    this.name,
    this.coverImgUrl,
    this.userId,
    this.createTime,
    this.status,
    this.opRecommend,
    this.highQuality,
    this.newImported,
    this.updateTime,
    this.trackCount,
    this.specialType,
    this.privacy,
    this.trackUpdateTime,
    this.commentThreadId,
    this.playCount,
    this.trackNumberUpdateTime,
    this.subscribedCount,
    this.cloudTrackCount,
    this.ordered,
    this.description,
    this.tags,
    this.updateFrequency,
    this.backgroundCoverId,
    this.titleImage,
    this.titleImageUrl,
    this.englishTitle,
    this.creator,
    this.tracks,
    this.shareCount,
    this.commentCount,
  );

  factory PlayerList.fromJson(Map<String, dynamic> json) {
    return _$PlayerListFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class PlayerListCreator {
  final bool? defaultAvatar;
  final int? province;
  final int? authStatus;
  final bool? followed;
  final String avatarUrl;
  final int? accountStatus;
  final int? gender;
  final int? city;
  final int? birthday;
  final int userId;
  final int? userType;
  final String nickname;
  final String? signature;
  final String? description;
  final String? detailDescription;
  final int? avatarImgId;
  final int? backgroundImgId;
  final String? backgroundUrl;
  final int? authority;
  final bool? mutual;

  PlayerListCreator(
    this.defaultAvatar,
    this.province,
    this.authStatus,
    this.followed,
    this.avatarUrl,
    this.accountStatus,
    this.gender,
    this.city,
    this.birthday,
    this.userId,
    this.userType,
    this.nickname,
    this.signature,
    this.description,
    this.detailDescription,
    this.avatarImgId,
    this.backgroundImgId,
    this.backgroundUrl,
    this.authority,
    this.mutual,
  );

  factory PlayerListCreator.fromJson(Map<String, dynamic> json) {
    return _$PlayerListCreatorFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class PlayerListTrack {
  // 歌名
  final String name;
  final int id;
  final int? pst;
  final int? t;
  final List<Artist> ar;
  final int pop;
  final AL? al;
  final int mv;

  PlayerListTrack({
    this.name = '',
    this.id = -1,
    this.pst,
    this.t,
    this.ar = const [],
    this.pop = 0,
    this.al,
    this.mv = -1,
  });

  factory PlayerListTrack.fromJson(Map<String, dynamic> json) {
    return _$PlayerListTrackFromJson(json);
  }

  String get singerAlbumDesc {
    String singer = ar.isEmpty ? '' : ar[0].name;
    if (ar.length > 1) {
      singer = '${ar[0].name}/${ar[1].name}';
    }

    return singer + ' - ' + (al?.name ?? '');
  }

  bool get hasMv => mv != -1;

  @override
  String toString() {
    return 'PlayerListTrack{name: $name, id: $id, pst: $pst, t: $t, ar: $ar, pop: $pop, al: $al, mv: $mv}';
  }
}

@JsonSerializable(createToJson: false)
class Al {
  final String? id;
  final String? name;
  final String? picUrl;

  Al(this.id, this.name, this.picUrl);

  factory Al.fromJson(Map<String, dynamic> json) {
    return _$AlFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class TrackAllResponse extends BaseHttpResponse {
  final List<Song> songs;

  // privileges

  TrackAllResponse({int code = 404, this.songs = const []}) : super(code);

  factory TrackAllResponse.fromJson(Map<String, dynamic> json) {
    return _$TrackAllResponseFromJson(json);
  }
}
