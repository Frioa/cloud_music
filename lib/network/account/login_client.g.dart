// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _NestLoginClient implements NestLoginClient {
  _NestLoginClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://flutter-cloud-music-api.vercel.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<NestLoginResponse> cellPhone(phone, password,
      {md5Password, captcha}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'phone': phone,
      r'password': password,
      r'md5_password': md5Password,
      r'captcha': captcha
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NestLoginResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login/cellphone',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NestLoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NestLoginResponse> email(email, password, {md5Password}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'email': email,
      r'password': password,
      r'md5_password': md5Password
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NestLoginResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NestLoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HttpResponse<NestQrKeyResponse>> getQrKey({timestamp}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'timestamp': timestamp};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<NestQrKeyResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login/qr/key',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HttpResponse<NestQrKeyResponse>.fromJson(
      _result.data!,
      (json) => NestQrKeyResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<HttpResponse<NestQrCreateResponse>> getQrCreate(key,
      {qrimg = true, timestamp}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': key,
      r'qrimg': qrimg,
      r'timestamp': timestamp
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<NestQrCreateResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login/qr/create',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HttpResponse<NestQrCreateResponse>.fromJson(
      _result.data!,
      (json) => NestQrCreateResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<NestQrCheckResponse> getQrCheck(key, {timestamp}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': key,
      r'timestamp': timestamp
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NestQrCheckResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login/qr/check',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NestQrCheckResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyNestCaptchaResponse> sentCaptcha(phone) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'phone': phone};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VerifyNestCaptchaResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/captcha/sent',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyNestCaptchaResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyNestCaptchaResponse> verifyCaptcha(phone, captcha) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'phone': phone,
      r'captcha': captcha
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VerifyNestCaptchaResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/captcha/verify',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyNestCaptchaResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
