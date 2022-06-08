// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MVURLResponse _$MVURLResponseFromJson(Map<String, dynamic> json) =>
    MVURLResponse(
      id: json['id'] as int? ?? 0,
      url: json['url'] as String? ?? "",
      r: json['r'] as int? ?? 0,
      size: json['size'] as int? ?? 0,
      md5: json['md5'] as String? ?? "",
      code: json['code'] as int? ?? -1,
      expi: json['expi'] as int? ?? 0,
      fee: json['fee'] as int? ?? 0,
      mvFee: json['mvFee'] as int? ?? 0,
      st: json['st'] as int? ?? 0,
      msg: json['msg'] as String? ?? "",
    );
