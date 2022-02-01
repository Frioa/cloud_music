import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
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

@JsonSerializable()
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

@JsonSerializable()
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

@JsonSerializable()
class SentNestCaptchaResponse {
  final int code;

  final bool data;

  final String message;

  SentNestCaptchaResponse({this.code = 404, this.data = false, this.message = ''});

  factory SentNestCaptchaResponse.fromJson(Map<String, dynamic> json) {
    return _$SentNestCaptchaResponseFromJson(json);
  }

  @override
  String toString() {
    return 'SentNestCaptchaResponse{code: $code, data: $data, message: $message}';
  }
}
