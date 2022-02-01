import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class QrKeyResponse {
  final int code;
  final String unikey;

  QrKeyResponse({this.code = 404, this.unikey = ''});

  factory QrKeyResponse.fromJson(Map<String, dynamic> json) {
    return _$QrKeyResponseFromJson(json);
  }

  @override
  String toString() {
    return 'QrKeyResponse{code: $code, unikey: $unikey}';
  }
}

@JsonSerializable()
class QrCreateResponse {
  final String qrurl;
  final String qrimg;

  QrCreateResponse({this.qrurl = '', this.qrimg = ''});

  factory QrCreateResponse.fromJson(Map<String, dynamic> json) {
    return _$QrCreateResponseFromJson(json);
  }

  @override
  String toString() {
    return 'QrCreateResponse{qrurl: $qrurl, qrimg: $qrimg}';
  }
}

/// 800 为二维码过期,
/// 801 为等待扫码,
/// 802 为待确认,
/// 803 为授权登录成功(803 状态码下会返回 cookies)
enum QrCheckResult {
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
class QrCheckResponse {
  @JsonKey(unknownEnumValue: QrCheckResult.expire)
  final QrCheckResult code;

  final String message;

  final String cookie;

  QrCheckResponse({this.code = QrCheckResult.expire, this.message = '', this.cookie = ''});

  factory QrCheckResponse.fromJson(Map<String, dynamic> json) {
    return _$QrCheckResponseFromJson(json);
  }

  @override
  String toString() {
    return 'QrCheckResponse{code: $code, message: $message, cookie: $cookie}';
  }
}
