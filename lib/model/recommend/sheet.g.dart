// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendSheetResponse _$RecommendSheetResponseFromJson(
        Map<String, dynamic> json) =>
    RecommendSheetResponse(
      code: json['code'] as int? ?? 404,
      featureFirst: json['featureFirst'] as bool? ?? false,
      haveRcmdSongs: json['haveRcmdSongs'] as bool? ?? false,
      recommend: (json['recommend'] as List<dynamic>?)
              ?.map((e) => RecommendSheet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

RecommendSheet _$RecommendSheetFromJson(Map<String, dynamic> json) =>
    RecommendSheet(
      id: json['id'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      copywriter: json['copywriter'] as String? ?? '',
      picUrl: json['picUrl'] as String? ?? '',
      playcount: json['playcount'] as int? ?? 0,
      createTime: json['createTime'] as int? ?? 0,
      trackCount: json['trackCount'] as int? ?? 0,
      userId: json['userId'] as int? ?? 0,
      alg: json['alg'] as String? ?? '',
      creator: json['creator'] == null
          ? null
          : Creator.fromJson(json['creator'] as Map<String, dynamic>),
    );

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      backgroundImgIdStr: json['backgroundImgIdStr'] as String? ?? '',
      remarkName: json['remarkName'] as String? ?? '',
      mutual: json['mutual'] as bool? ?? false,
      detailDescription: json['detailDescription'] as String? ?? '',
      defaultAvatar: json['defaultAvatar'] as bool? ?? false,
      expertTags: (json['expertTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      djStatus: json['djStatus'] as int?,
      followed: json['followed'] as bool?,
      backgroundUrl: json['backgroundUrl'] as String? ?? '',
      avatarImgId: json['avatarImgId'] as int? ?? 0,
      backgroundImgId: json['backgroundImgId'] as int? ?? 0,
      avatarImgIdStr: json['avatarImgIdStr'] as String? ?? '',
      userId: json['userId'] as int? ?? -1,
      accountStatus: json['accountStatus'] as int? ?? -1,
      vipType: json['vipType'] as int? ?? -1,
      province: json['province'] as int? ?? -1,
      gender: json['gender'] as int? ?? 0,
      avatarUrl: json['avatarUrl'] as String? ?? '',
      authStatus: json['authStatus'] as int? ?? 0,
      userType: json['userType'] as int? ?? -1,
      nickname: json['nickname'] as String? ?? '',
      birthday: json['birthday'] as int? ?? 0,
      city: json['city'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      signature: json['signature'] as String? ?? '',
      authority: json['authority'] as int? ?? 0,
    );
