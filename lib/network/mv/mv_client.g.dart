// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mv_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _MVClient implements MVClient {
  _MVClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://netease-cloud-music-api-mu-opal.vercel.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<DataWrapResponse<MVURLResponse>> mvUrl(id, {r = 240}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id, r'r': r};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataWrapResponse<MVURLResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/mv/url',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataWrapResponse<MVURLResponse>.fromJson(
      _result.data!,
      (json) => MVURLResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<DataWrapResponse<MvDetailResponse>> mvDetail(mvId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mvid': mvId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataWrapResponse<MvDetailResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/mv/detail',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataWrapResponse<MvDetailResponse>.fromJson(
      _result.data!,
      (json) => MvDetailResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<MvInfo> mvDetailInfo(mvId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mvid': mvId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MvInfo>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/mv/detail/info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MvInfo.fromJson(_result.data!);
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
