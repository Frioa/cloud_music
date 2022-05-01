// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayDetailResponse _$PlayDetailResponseFromJson(Map<String, dynamic> json) =>
    PlayDetailResponse(
      code: json['code'] as int? ?? 404,
      playlist: json['playlist'] == null
          ? null
          : PlayerList.fromJson(json['playlist'] as Map<String, dynamic>),
      urls: json['urls'] as String?,
    );

PlayerList _$PlayerListFromJson(Map<String, dynamic> json) => PlayerList(
      json['id'] as int,
      json['name'] as String,
      json['coverImgUrl'] as String,
      json['userId'] as int?,
      json['createTime'] as int?,
      json['status'] as int?,
      json['opRecommend'] as bool?,
      json['highQuality'] as bool?,
      json['newImported'] as bool?,
      json['updateTime'] as int?,
      json['trackCount'] as int,
      json['specialType'] as int?,
      json['privacy'] as int?,
      json['trackUpdateTime'] as int?,
      json['commentThreadId'] as String,
      json['playCount'] as int,
      json['trackNumberUpdateTime'] as int,
      json['subscribedCount'] as int,
      json['cloudTrackCount'] as int?,
      json['ordered'] as bool?,
      json['description'] as String?,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['updateFrequency'] as String?,
      json['backgroundCoverId'] as int?,
      json['titleImage'] as int?,
      json['titleImageUrl'] as String?,
      json['englishTitle'] as String?,
      json['creator'] == null
          ? null
          : PlayerListCreator.fromJson(json['creator'] as Map<String, dynamic>),
      (json['tracks'] as List<dynamic>?)
          ?.map((e) => PlayerListTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['shareCount'] as int,
      json['commentCount'] as int,
    );

PlayerListCreator _$PlayerListCreatorFromJson(Map<String, dynamic> json) =>
    PlayerListCreator(
      json['defaultAvatar'] as bool?,
      json['province'] as int?,
      json['authStatus'] as int?,
      json['followed'] as bool?,
      json['avatarUrl'] as String,
      json['accountStatus'] as int?,
      json['gender'] as int?,
      json['city'] as int?,
      json['birthday'] as int?,
      json['userId'] as int,
      json['userType'] as int?,
      json['nickname'] as String,
      json['signature'] as String?,
      json['description'] as String?,
      json['detailDescription'] as String?,
      json['avatarImgId'] as int?,
      json['backgroundImgId'] as int?,
      json['backgroundUrl'] as String?,
      json['authority'] as int?,
      json['mutual'] as bool?,
    );

PlayerListTrack _$PlayerListTrackFromJson(Map<String, dynamic> json) =>
    PlayerListTrack(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? -1,
      pst: json['pst'] as int?,
      t: json['t'] as int?,
      ar: (json['ar'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pop: json['pop'] as int? ?? 0,
      al: json['al'] == null
          ? null
          : AL.fromJson(json['al'] as Map<String, dynamic>),
      mv: json['mv'] as int? ?? -1,
    );

Al _$AlFromJson(Map<String, dynamic> json) => Al(
      json['id'] as String?,
      json['name'] as String?,
      json['picUrl'] as String?,
    );

TrackAllResponse _$TrackAllResponseFromJson(Map<String, dynamic> json) =>
    TrackAllResponse(
      code: json['code'] as int? ?? 404,
      songs: (json['songs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
