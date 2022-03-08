import 'package:cloud_music/common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@CopyWith()
@JsonSerializable(createToJson: false)
class NestUserDetailResponse extends BaseHttpResponse {
  final int? level;
  final NestAccount? account;
  final NestProfile? profile;
  final List<NestBinding>? bindings;
  final NestUserPoint? userPoint;
  final bool? mobileSign;
  final bool? pcSign;
  final bool? peopleCanSeeMyPlayRecord;
  final bool? adValid;
  final int? createTime;
  final int? createDays;
  final NestProfileVillageInfo? profileVillageInfo;

  NestUserDetailResponse({
    int code = 404,
    this.level,
    this.account,
    this.profile,
    this.bindings,
    this.userPoint,
    this.mobileSign,
    this.pcSign,
    this.peopleCanSeeMyPlayRecord,
    this.adValid,
    this.createTime,
    this.createDays,
    this.profileVillageInfo,
  }) : super(code);

  factory NestUserDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$NestUserDetailResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestUserDetailResponse{level: $level, account: $account, profile: $profile, bindings: $bindings, userPoint: $userPoint, mobileSign: $mobileSign, pcSign: $pcSign, peopleCanSeeMyPlayRecord: $peopleCanSeeMyPlayRecord, adValid: $adValid, createTime: $createTime, createDays: $createDays, profileVillageInfo: $profileVillageInfo}';
  }
}

@CopyWith()
@JsonSerializable(createToJson: false)
class NestUserPoint {
  final int? userId;
  final int? balance;
  final int? updateTime;
  final int? status;
  final int? version;
  final int? createTime;
  final int? blockBalance;

  NestUserPoint({
    this.userId,
    this.balance,
    this.updateTime,
    this.status,
    this.version,
    this.createTime,
    this.blockBalance,
  });

  factory NestUserPoint.fromJson(Map<String, dynamic> json) {
    return _$NestUserPointFromJson(json);
  }

  @override
  String toString() {
    return 'NestUserPoint{userId: $userId, balance: $balance, updateTime: $updateTime, status: $status, version: $version, createTime: $createTime, blockBalance: $blockBalance}';
  }
}

@CopyWith()
@JsonSerializable(createToJson: false)
class NestUserAccountResponse extends BaseHttpResponse {
  final NestAccount? account;
  final NestProfile? profile;

  NestUserAccountResponse({
    int code = 404,
    this.account,
    this.profile,
  }) : super(code);

  factory NestUserAccountResponse.fromJson(Map<String, dynamic> json) {
    return _$NestUserAccountResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestUserAccountResponse{account: $account, profile: $profile}';
  }
}

@CopyWith()
@JsonSerializable(createToJson: false)
class UserRecordSong {
  final String? name;
  final int? id;
  final List<Artist>? ar;
  final List<String>? alia;
  final AL? al;

  UserRecordSong({this.name, this.id, this.ar, this.alia, this.al});

  factory UserRecordSong.fromJson(Map<String, dynamic> json) {
    return _$UserRecordSongFromJson(json);
  }
}

@CopyWith()
@JsonSerializable(createToJson: false)
class NestUserRecord {
  final int? playCount;
  final int? score;
  final UserRecordSong? song;

  NestUserRecord({this.playCount, this.score, this.song});

  factory NestUserRecord.fromJson(Map<String, dynamic> json) {
    return _$NestUserRecordFromJson(json);
  }
}

@CopyWith()
@JsonSerializable(createToJson: false)
class NestUserRecordResponse {
  final int? code;
  final List<NestUserRecord>? allData;
  final List<NestUserRecord>? weekData;

  NestUserRecordResponse({this.code, this.allData, this.weekData});

  factory NestUserRecordResponse.fromJson(Map<String, dynamic> json) {
    return _$NestUserRecordResponseFromJson(json);
  }
}
