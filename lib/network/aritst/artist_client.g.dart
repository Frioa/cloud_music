// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ArtistClient implements ArtistClient {
  _ArtistClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://netease-cloud-music-api-mu-opal.vercel.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<DataWrapResponse<ArtistsDetailResponse>> artistsDetail(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DataWrapResponse<ArtistsDetailResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/artist/detail',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataWrapResponse<ArtistsDetailResponse>.fromJson(
      _result.data!,
      (json) => ArtistsDetailResponse.fromJson(json as Map<String, dynamic>),
    );
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
