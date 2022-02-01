// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpResponse<T> _$HttpResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    HttpResponse<T>(
      code: json['code'] as int? ?? 404,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$HttpResponseToJson<T>(
  HttpResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'data': toJsonT(instance.data),
    };
