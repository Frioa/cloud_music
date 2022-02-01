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

Map<String, dynamic> _$NestQrKeyResponseToJson(NestQrKeyResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'unikey': instance.unikey,
    };

NestQrCreateResponse _$NestQrCreateResponseFromJson(
        Map<String, dynamic> json) =>
    NestQrCreateResponse(
      qrurl: json['qrurl'] as String? ?? '',
      qrimg: json['qrimg'] as String? ?? '',
    );

Map<String, dynamic> _$NestQrCreateResponseToJson(
        NestQrCreateResponse instance) =>
    <String, dynamic>{
      'qrurl': instance.qrurl,
      'qrimg': instance.qrimg,
    };

NestQrCheckResponse _$NestQrCheckResponseFromJson(Map<String, dynamic> json) =>
    NestQrCheckResponse(
      code: $enumDecodeNullable(_$NestQrCheckResultEnumMap, json['code'],
              unknownValue: NestQrCheckResult.expire) ??
          NestQrCheckResult.expire,
      message: json['message'] as String? ?? '',
      cookie: json['cookie'] as String? ?? '',
    );

Map<String, dynamic> _$NestQrCheckResponseToJson(
        NestQrCheckResponse instance) =>
    <String, dynamic>{
      'code': _$NestQrCheckResultEnumMap[instance.code],
      'message': instance.message,
      'cookie': instance.cookie,
    };

const _$NestQrCheckResultEnumMap = {
  NestQrCheckResult.expire: 800,
  NestQrCheckResult.wait: 801,
  NestQrCheckResult.unConfirmed: 802,
  NestQrCheckResult.succeeded: 803,
};

SentNestCaptchaResponse _$SentNestCaptchaResponseFromJson(
        Map<String, dynamic> json) =>
    SentNestCaptchaResponse(
      code: json['code'] as int? ?? 404,
      data: json['data'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$SentNestCaptchaResponseToJson(
        SentNestCaptchaResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
    };
