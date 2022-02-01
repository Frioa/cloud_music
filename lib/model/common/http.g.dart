// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseHttpResponse _$BaseHttpResponseFromJson(Map<String, dynamic> json) =>
    BaseHttpResponse(
      json['code'] as int,
    );

HttpResponse<T> _$HttpResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    HttpResponse<T>(
      code: json['code'] as int? ?? 404,
      data: fromJsonT(json['data']),
    );
