// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseHttpResponse _$BaseHttpResponseFromJson(Map<String, dynamic> json) =>
    BaseHttpResponse(
      json['code'] as int,
    );

DataWrapResponse<T> _$DataWrapResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataWrapResponse<T>(
      code: json['code'] as int? ?? 404,
      data: fromJsonT(json['data']),
    );
