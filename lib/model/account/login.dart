import 'package:cloud_music/model/common/http.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@CopyWith()
@JsonSerializable(createToJson: false)
class NestLoginResponse extends BaseHttpResponse {
  final int loginType;
  final String token;
  final String cookie;
  final NestAccount? account;
  final NestProfile? profile;
  final List<NestBinding>? bindings;

  NestLoginResponse({
    int code = 404,
    this.loginType = -1,
    this.token = '',
    this.cookie = '',
    this.account,
    this.profile,
    this.bindings,
  }) : super(code);

  factory NestLoginResponse.fromJson(Map<String, dynamic> json) {
    return _$NestLoginResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestLoginResponse{loginType: $loginType, token: $token, cookie: $cookie, account: $account, profile: $profile, bindings: $bindings}';
  }
}

@JsonSerializable(createToJson: false)
class NestAccount {
  final int? id;
  final String? userName;
  final int? type;
  final int? status;
  final int? whitelistAuthority;
  final int? createTime;
  final String? salt;
  final int? tokenVersion;
  final int? ban;
  final int? baoyueVersion;
  final int? donateVersion;
  final int? vipType;
  final int? viptypeVersion;
  final bool? anonimousUser;
  final bool? uninitialized;

  NestAccount({
    this.id,
    this.userName,
    this.type,
    this.status,
    this.whitelistAuthority,
    this.createTime,
    this.salt,
    this.tokenVersion,
    this.ban,
    this.baoyueVersion,
    this.donateVersion,
    this.vipType,
    this.viptypeVersion,
    this.anonimousUser,
    this.uninitialized,
  });

  factory NestAccount.fromJson(Map<String, dynamic> json) {
    return _$NestAccountFromJson(json);
  }

  @override
  String toString() {
    return 'NestAccount{id: $id, userName: $userName, type: $type, status: $status, whitelistAuthority: $whitelistAuthority, createTime: $createTime, salt: $salt, tokenVersion: $tokenVersion, ban: $ban, baoyueVersion: $baoyueVersion, donateVersion: $donateVersion, vipType: $vipType, viptypeVersion: $viptypeVersion, anonimousUser: $anonimousUser, uninitialized: $uninitialized}';
  }
}

@JsonSerializable(createToJson: false)
class NestProfile {
  final String? detailDescription;
  final bool? followed;
  final String? backgroundUrl;
  final String? backgroundImgIdStr;
  final String? avatarImgIdStr;
  final int? userId;
  final int? userType;
  final int? accountStatus;
  final int? vipType;
  final int? gender;
  final int? avatarImgId;
  final String? nickname;
  final int? backgroundImgId;
  final int? birthday;
  final int? city;
  final String? avatarUrl;
  final int? province;
  final bool? defaultAvatar;
  final String? expertTags;
  final Map<String, Object?>? experts;
  final bool? mutual;
  final String? remarkName;
  final int? authStatus;
  final int? djStatus;
  final String? description;
  final String? signature;
  final int? authority;
  final String? avatarImgId_str; // ignore: non_constant_identifier_names
  final int? followeds;
  final int? follows;
  final int? eventCount;
  final Object? avatarDetail;
  final int? playlistCount;
  final int? playlistBeSubscribedCount;

  NestProfile({
    this.detailDescription,
    this.followed,
    this.backgroundUrl,
    this.backgroundImgIdStr,
    this.avatarImgIdStr,
    this.userId,
    this.userType,
    this.accountStatus,
    this.vipType,
    this.gender,
    this.avatarImgId,
    this.nickname,
    this.backgroundImgId,
    this.birthday,
    this.city,
    this.avatarUrl,
    this.province,
    this.defaultAvatar,
    this.expertTags,
    this.experts,
    this.mutual,
    this.remarkName,
    this.authStatus,
    this.djStatus,
    this.description,
    this.signature,
    this.authority,
    this.avatarImgId_str, // ignore: non_constant_identifier_names
    this.followeds,
    this.follows,
    this.eventCount,
    this.avatarDetail,
    this.playlistCount,
    this.playlistBeSubscribedCount,
  });

  @override
  String toString() {
    return 'NestProfile{detailDescription: $detailDescription,'
        ' followed: $followed,'
        ' backgroundUrl: $backgroundUrl, '
        'backgroundImgIdStr: $backgroundImgIdStr, '
        'avatarImgIdStr: $avatarImgIdStr, '
        'userId: $userId, '
        'userType: $userType, '
        'accountStatus: $accountStatus, '
        'vipType: $vipType, '
        'gender: $gender, '
        'avatarImgId: $avatarImgId, '
        'nickname: $nickname, '
        'backgroundImgId: $backgroundImgId, '
        'birthday: $birthday, '
        'city: $city, '
        'avatarUrl: $avatarUrl, '
        'province: $province, '
        'defaultAvatar: $defaultAvatar, '
        'expertTags: $expertTags, '
        'experts: $experts, '
        'mutual: $mutual, '
        'remarkName: $remarkName, '
        'authStatus: $authStatus, '
        'djStatus: $djStatus, '
        'description: $description, '
        'signature: $signature, '
        'authority: $authority, '
        'avatarImgId_str: $avatarImgId_str, '
        'followeds: $followeds, '
        'follows: $follows, '
        'eventCount: $eventCount, '
        'avatarDetail: $avatarDetail,'
        ' playlistCount: $playlistCount, '
        'playlistBeSubscribedCount: $playlistBeSubscribedCount'
        '}';
  }

  factory NestProfile.fromJson(Map<String, dynamic> json) {
    return _$NestProfileFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class NestBinding {
  final int? userId;
  final String? url;
  final bool? expired;
  final int? bindingTime;
  final String? tokenJsonStr;
  final int? expiresIn;
  final int? refreshTime;
  final int? id;
  final int? type;

  NestBinding({
    this.userId,
    this.url,
    this.expired,
    this.bindingTime,
    this.tokenJsonStr,
    this.expiresIn,
    this.refreshTime,
    this.id,
    this.type,
  });

  factory NestBinding.fromJson(Map<String, dynamic> json) {
    return _$NestBindingFromJson(json);
  }

  @override
  String toString() {
    return 'NestBinding{userId: $userId, url: $url, expired: $expired, bindingTime: $bindingTime, tokenJsonStr: $tokenJsonStr, expiresIn: $expiresIn, refreshTime: $refreshTime, id: $id, type: $type}';
  }
}

@JsonSerializable(createToJson: false)
class NestQrKeyResponse {
  final int code;
  final String unikey;

  NestQrKeyResponse({this.code = 404, this.unikey = ''});

  factory NestQrKeyResponse.fromJson(Map<String, dynamic> json) {
    return _$NestQrKeyResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestQrKeyResponse{code: $code, unikey: $unikey}';
  }
}

@JsonSerializable(createToJson: false)
class NestQrCreateResponse {
  final String qrurl;
  final String qrimg;

  NestQrCreateResponse({this.qrurl = '', this.qrimg = ''});

  factory NestQrCreateResponse.fromJson(Map<String, dynamic> json) {
    return _$NestQrCreateResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestQrCreateResponse{qrurl: $qrurl, qrimg: $qrimg}';
  }
}

/// 800 为二维码过期,
/// 801 为等待扫码,
/// 802 为待确认,
/// 803 为授权登录成功(803 状态码下会返回 cookies)
enum NestQrCheckResult {
  @JsonValue(800)
  expire,
  @JsonValue(801)
  wait,
  @JsonValue(802)
  unConfirmed,
  @JsonValue(803)
  succeeded,
}

@JsonSerializable(createToJson: false)
class NestQrCheckResponse {
  @JsonKey(unknownEnumValue: NestQrCheckResult.expire)
  final NestQrCheckResult code;

  final String message;

  final String cookie;

  NestQrCheckResponse({this.code = NestQrCheckResult.expire, this.message = '', this.cookie = ''});

  factory NestQrCheckResponse.fromJson(Map<String, dynamic> json) {
    return _$NestQrCheckResponseFromJson(json);
  }

  @override
  String toString() {
    return 'NestQrCheckResponse{code: $code, message: $message, cookie: $cookie}';
  }
}

@JsonSerializable(createToJson: false)
class VerifyNestCaptchaResponse {
  final int code;

  final bool data;

  final String message;

  VerifyNestCaptchaResponse({this.code = 404, this.data = false, this.message = ''});

  factory VerifyNestCaptchaResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyNestCaptchaResponseFromJson(json);
  }

  @override
  String toString() {
    return 'VerifyNestCaptchaResponse{code: $code, data: $data, message: $message}';
  }
}

@JsonSerializable(createToJson: false)
class SentNestVerifyResponse {
  final int code;

  final bool data;

  final String message;

  SentNestVerifyResponse({this.code = 404, this.data = false, this.message = ''});

  factory SentNestVerifyResponse.fromJson(Map<String, dynamic> json) {
    return _$SentNestVerifyResponseFromJson(json);
  }

  @override
  String toString() {
    return 'SentNestVerifyResponse{code: $code, data: $data, message: $message}';
  }
}
