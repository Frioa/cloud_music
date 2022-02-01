// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
