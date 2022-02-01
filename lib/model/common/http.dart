import 'package:json_annotation/json_annotation.dart';

part 'http.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class HttpResponse<T> {
  final int code;
  final T data;

  HttpResponse({this.code = 404,required this.data});

  factory HttpResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$HttpResponseFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson(HttpResponse<T> instance, Object? Function(T value) toJsonT) =>
      _$HttpResponseToJson<T>(instance, toJsonT);

  @override
  String toString() {
    return 'HttpResponse{code: $code, data: $data}';
  }
}
