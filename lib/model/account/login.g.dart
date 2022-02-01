// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrKeyResponse _$QrKeyResponseFromJson(Map<String, dynamic> json) =>
    QrKeyResponse(
      code: json['code'] as int? ?? 404,
      unikey: json['unikey'] as String? ?? '',
    );

Map<String, dynamic> _$QrKeyResponseToJson(QrKeyResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'unikey': instance.unikey,
    };

QrCreateResponse _$QrCreateResponseFromJson(Map<String, dynamic> json) =>
    QrCreateResponse(
      qrurl: json['qrurl'] as String? ?? '',
      qrimg: json['qrimg'] as String? ?? '',
    );

Map<String, dynamic> _$QrCreateResponseToJson(QrCreateResponse instance) =>
    <String, dynamic>{
      'qrurl': instance.qrurl,
      'qrimg': instance.qrimg,
    };

QrCheckResponse _$QrCheckResponseFromJson(Map<String, dynamic> json) =>
    QrCheckResponse(
      code: $enumDecodeNullable(_$QrCheckResultEnumMap, json['code'],
              unknownValue: QrCheckResult.expire) ??
          QrCheckResult.expire,
      message: json['message'] as String? ?? '',
      cookie: json['cookie'] as String? ?? '',
    );

Map<String, dynamic> _$QrCheckResponseToJson(QrCheckResponse instance) =>
    <String, dynamic>{
      'code': _$QrCheckResultEnumMap[instance.code],
      'message': instance.message,
      'cookie': instance.cookie,
    };

const _$QrCheckResultEnumMap = {
  QrCheckResult.expire: 800,
  QrCheckResult.wait: 801,
  QrCheckResult.unConfirmed: 802,
  QrCheckResult.succeeded: 803,
};
