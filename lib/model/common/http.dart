import 'package:json_annotation/json_annotation.dart';

part 'http.g.dart';

@JsonSerializable(createToJson: false)
class BaseHttpResponse {
  final int code;

  BaseHttpResponse(this.code);

  factory BaseHttpResponse.fromJson(Map<String, dynamic> json) {
    return _$BaseHttpResponseFromJson(json);
  }

  @override
  String toString() {
    return 'BaseHttpResponse{code: $code}';
  }
}

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class DataWrapResponse<T> extends BaseHttpResponse {
  final T data;

  DataWrapResponse({int code = 404, required this.data}) : super(code);

  factory DataWrapResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$DataWrapResponseFromJson(json, fromJsonT);
  }

  @override
  String toString() {
    return 'DataWrapResponse{code: $code, data: $data}';
  }
}
