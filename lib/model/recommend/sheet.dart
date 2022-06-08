import 'package:cloud_music/common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sheet.g.dart';

@JsonSerializable(createToJson: false)
class RecommendSheetResponse extends BaseHttpResponse {
  final bool featureFirst;
  final bool haveRcmdSongs;
  final List<RecommendSheet> recommend;

  RecommendSheetResponse({
    int code = 404,
    this.featureFirst = false,
    this.haveRcmdSongs = false,
    this.recommend = const [],
  }):super(code);

  factory RecommendSheetResponse.fromJson(Map<String, dynamic> json) {

    return _$RecommendSheetResponseFromJson(json);
  }

  @override
  String toString() {
    return 'DailySongResponse{featureFirst: $featureFirst, haveRcmdSongs: $haveRcmdSongs, recommend: $recommend}';
  }
}

@JsonSerializable(createToJson: false)
class RecommendSheet {
  final int id;
  final int type;
  final String name;
  final String copywriter;
  final String coverImgUrl;
  final String picUrl;
  final int playcount;
  final int createTime;
  final int trackCount;
  final int userId;
  final String alg;
  final Creator? creator;

  RecommendSheet({
    this.id = 0,
    this.type = 0,
    this.name = '',
    this.copywriter = '',
    this.coverImgUrl = '',
    this.picUrl = '',
    this.playcount = 0,
    this.createTime = 0,
    this.trackCount = 0,
    this.userId = 0,
    this.alg = '',
    this.creator,
  });

  factory RecommendSheet.fromJson(Map<String, dynamic> json) {
    return _$RecommendSheetFromJson(json);
  }

  @override
  String toString() {
    return 'RecommendSheet{id: $id, type: $type, name: $name, copywriter: $copywriter, picUrl: $picUrl, playcount: $playcount, createTime: $createTime, trackCount: $trackCount, userId: $userId, alg: $alg, creator: $creator}';
  }
}

@JsonSerializable(createToJson: false)
class Creator {
  final String backgroundImgIdStr;
  final String remarkName;
  final bool mutual;
  final String detailDescription;
  final bool defaultAvatar;
  final List<String> expertTags;
  final int? djStatus;
  final bool? followed;
  final String backgroundUrl;
  final int avatarImgId;
  final int backgroundImgId;
  final String avatarImgIdStr;
  final int userId;
  final int accountStatus;
  final int vipType;
  final int province;
  final int gender;
  final String avatarUrl;
  final int authStatus;
  final int userType;
  final String nickname;
  final int birthday;
  final int city;
  final String description;
  final String signature;
  final int authority;

  Creator({
    this.backgroundImgIdStr = '',
    this.remarkName = '',
    this.mutual = false,
    this.detailDescription = '',
    this.defaultAvatar = false,
    this.expertTags = const [],
    this.djStatus,
    this.followed,
    this.backgroundUrl = '',
    this.avatarImgId = 0,
    this.backgroundImgId = 0,
    this.avatarImgIdStr = '',
    this.userId = -1,
    this.accountStatus = -1,
    this.vipType = -1,
    this.province = -1,
    this.gender = 0,
    this.avatarUrl = '',
    this.authStatus = 0,
    this.userType = -1,
    this.nickname = '',
    this.birthday = 0,
    this.city = 0,
    this.description = '',
    this.signature = '',
    this.authority = 0,
  });

  factory Creator.fromJson(Map<String, dynamic> json) {
    return _$CreatorFromJson(json);
  }

  @override
  String toString() {
    return 'Creator{backgroundImgIdStr: $backgroundImgIdStr, remarkName: $remarkName, mutual: $mutual, detailDescription: $detailDescription, defaultAvatar: $defaultAvatar, expertTags: $expertTags, djStatus: $djStatus, followed: $followed, backgroundUrl: $backgroundUrl, avatarImgId: $avatarImgId, backgroundImgId: $backgroundImgId, avatarImgIdStr: $avatarImgIdStr, userId: $userId, accountStatus: $accountStatus, vipType: $vipType, province: $province, gender: $gender, avatarUrl: $avatarUrl, authStatus: $authStatus, userType: $userType, nickname: $nickname, birthday: $birthday, city: $city, description: $description, signature: $signature, authority: $authority}';
  }
}



///
/// 用户歌单
///
@JsonSerializable(createToJson: false)
class UserSheetResponse extends BaseHttpResponse {
  final List<RecommendSheet> playlist;

  UserSheetResponse({
    int code = 404,
    this.playlist = const [],
  }):super(code);

  factory UserSheetResponse.fromJson(Map<String, dynamic> json) {
    return _$UserSheetResponseFromJson(json);
  }

}