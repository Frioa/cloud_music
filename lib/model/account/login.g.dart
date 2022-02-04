// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NestLoginResponseCWProxy {
  NestLoginResponse account(NestAccount? account);

  NestLoginResponse bindings(List<NestBinding>? bindings);

  NestLoginResponse code(int code);

  NestLoginResponse cookie(String cookie);

  NestLoginResponse loginType(int loginType);

  NestLoginResponse profile(NestProfile? profile);

  NestLoginResponse token(String token);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NestLoginResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NestLoginResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  NestLoginResponse call({
    NestAccount? account,
    List<NestBinding>? bindings,
    int? code,
    String? cookie,
    int? loginType,
    NestProfile? profile,
    String? token,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNestLoginResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNestLoginResponse.copyWith.fieldName(...)`
class _$NestLoginResponseCWProxyImpl implements _$NestLoginResponseCWProxy {
  final NestLoginResponse _value;

  const _$NestLoginResponseCWProxyImpl(this._value);

  @override
  NestLoginResponse account(NestAccount? account) => this(account: account);

  @override
  NestLoginResponse bindings(List<NestBinding>? bindings) =>
      this(bindings: bindings);

  @override
  NestLoginResponse code(int code) => this(code: code);

  @override
  NestLoginResponse cookie(String cookie) => this(cookie: cookie);

  @override
  NestLoginResponse loginType(int loginType) => this(loginType: loginType);

  @override
  NestLoginResponse profile(NestProfile? profile) => this(profile: profile);

  @override
  NestLoginResponse token(String token) => this(token: token);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NestLoginResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NestLoginResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  NestLoginResponse call({
    Object? account = const $CopyWithPlaceholder(),
    Object? bindings = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? cookie = const $CopyWithPlaceholder(),
    Object? loginType = const $CopyWithPlaceholder(),
    Object? profile = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
  }) {
    return NestLoginResponse(
      account: account == const $CopyWithPlaceholder()
          ? _value.account
          // ignore: cast_nullable_to_non_nullable
          : account as NestAccount?,
      bindings: bindings == const $CopyWithPlaceholder()
          ? _value.bindings
          // ignore: cast_nullable_to_non_nullable
          : bindings as List<NestBinding>?,
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      cookie: cookie == const $CopyWithPlaceholder() || cookie == null
          ? _value.cookie
          // ignore: cast_nullable_to_non_nullable
          : cookie as String,
      loginType: loginType == const $CopyWithPlaceholder() || loginType == null
          ? _value.loginType
          // ignore: cast_nullable_to_non_nullable
          : loginType as int,
      profile: profile == const $CopyWithPlaceholder()
          ? _value.profile
          // ignore: cast_nullable_to_non_nullable
          : profile as NestProfile?,
      token: token == const $CopyWithPlaceholder() || token == null
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
    );
  }
}

extension $NestLoginResponseCopyWith on NestLoginResponse {
  /// Returns a callable class that can be used as follows: `instanceOfclass NestLoginResponse extends BaseHttpResponse.name.copyWith(...)` or like so:`instanceOfclass NestLoginResponse extends BaseHttpResponse.name.copyWith.fieldName(...)`.
  _$NestLoginResponseCWProxy get copyWith =>
      _$NestLoginResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NestLoginResponse _$NestLoginResponseFromJson(Map<String, dynamic> json) =>
    NestLoginResponse(
      code: json['code'] as int? ?? 404,
      loginType: json['loginType'] as int? ?? -1,
      token: json['token'] as String? ?? '',
      cookie: json['cookie'] as String? ?? '',
      account: json['account'] == null
          ? null
          : NestAccount.fromJson(json['account'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : NestProfile.fromJson(json['profile'] as Map<String, dynamic>),
      bindings: (json['bindings'] as List<dynamic>?)
          ?.map((e) => NestBinding.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

NestAccount _$NestAccountFromJson(Map<String, dynamic> json) => NestAccount(
      id: json['id'] as int?,
      userName: json['userName'] as String?,
      type: json['type'] as int?,
      status: json['status'] as int?,
      whitelistAuthority: json['whitelistAuthority'] as int?,
      createTime: json['createTime'] as int?,
      salt: json['salt'] as String?,
      tokenVersion: json['tokenVersion'] as int?,
      ban: json['ban'] as int?,
      baoyueVersion: json['baoyueVersion'] as int?,
      donateVersion: json['donateVersion'] as int?,
      vipType: json['vipType'] as int?,
      viptypeVersion: json['viptypeVersion'] as int?,
      anonimousUser: json['anonimousUser'] as bool?,
      uninitialized: json['uninitialized'] as bool?,
    );

NestProfile _$NestProfileFromJson(Map<String, dynamic> json) => NestProfile(
      detailDescription: json['detailDescription'] as String?,
      followed: json['followed'] as bool?,
      backgroundUrl: json['backgroundUrl'] as String?,
      backgroundImgIdStr: json['backgroundImgIdStr'] as String?,
      avatarImgIdStr: json['avatarImgIdStr'] as String?,
      userId: json['userId'] as int?,
      userType: json['userType'] as int?,
      accountStatus: json['accountStatus'] as int?,
      vipType: json['vipType'] as int?,
      gender: json['gender'] as int?,
      avatarImgId: json['avatarImgId'] as int?,
      nickname: json['nickname'] as String?,
      backgroundImgId: json['backgroundImgId'] as int?,
      birthday: json['birthday'] as int?,
      city: json['city'] as int?,
      avatarUrl: json['avatarUrl'] as String?,
      province: json['province'] as int?,
      defaultAvatar: json['defaultAvatar'] as bool?,
      expertTags: json['expertTags'] as String?,
      experts: json['experts'] as Map<String, dynamic>?,
      mutual: json['mutual'] as bool?,
      remarkName: json['remarkName'] as String?,
      authStatus: json['authStatus'] as int?,
      djStatus: json['djStatus'] as int?,
      description: json['description'] as String?,
      signature: json['signature'] as String?,
      authority: json['authority'] as int?,
      avatarImgId_str: json['avatarImgId_str'] as String?,
      followeds: json['followeds'] as int?,
      follows: json['follows'] as int?,
      eventCount: json['eventCount'] as int?,
      avatarDetail: json['avatarDetail'],
      playlistCount: json['playlistCount'] as int?,
      playlistBeSubscribedCount: json['playlistBeSubscribedCount'] as int?,
    );

NestBinding _$NestBindingFromJson(Map<String, dynamic> json) => NestBinding(
      userId: json['userId'] as int?,
      url: json['url'] as String?,
      expired: json['expired'] as bool?,
      bindingTime: json['bindingTime'] as int?,
      tokenJsonStr: json['tokenJsonStr'] as String?,
      expiresIn: json['expiresIn'] as int?,
      refreshTime: json['refreshTime'] as int?,
      id: json['id'] as int?,
      type: json['type'] as int?,
    );

NestQrKeyResponse _$NestQrKeyResponseFromJson(Map<String, dynamic> json) =>
    NestQrKeyResponse(
      code: json['code'] as int? ?? 404,
      unikey: json['unikey'] as String? ?? '',
    );

NestQrCreateResponse _$NestQrCreateResponseFromJson(
        Map<String, dynamic> json) =>
    NestQrCreateResponse(
      qrurl: json['qrurl'] as String? ?? '',
      qrimg: json['qrimg'] as String? ?? '',
    );

NestQrCheckResponse _$NestQrCheckResponseFromJson(Map<String, dynamic> json) =>
    NestQrCheckResponse(
      code: $enumDecodeNullable(_$NestQrCheckResultEnumMap, json['code'],
              unknownValue: NestQrCheckResult.expire) ??
          NestQrCheckResult.expire,
      message: json['message'] as String? ?? '',
      cookie: json['cookie'] as String? ?? '',
    );

const _$NestQrCheckResultEnumMap = {
  NestQrCheckResult.expire: 800,
  NestQrCheckResult.wait: 801,
  NestQrCheckResult.unConfirmed: 802,
  NestQrCheckResult.succeeded: 803,
};

VerifyNestCaptchaResponse _$VerifyNestCaptchaResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyNestCaptchaResponse(
      code: json['code'] as int? ?? 404,
      data: json['data'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

SentNestVerifyResponse _$SentNestVerifyResponseFromJson(
        Map<String, dynamic> json) =>
    SentNestVerifyResponse(
      code: json['code'] as int? ?? 404,
      data: json['data'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );
