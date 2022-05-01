import 'package:json_annotation/json_annotation.dart';

part 'song.g.dart';

enum MediaType {
  @JsonValue('mp3')
  mp3
}

enum EncodeType {
  @JsonValue('mp3')
  mp3
}

@JsonSerializable(createToJson: false)
class SongUrlResponse {
  final int? code;
  final List<SongDetail>? data;

  SongUrlResponse({this.code, this.data});

  factory SongUrlResponse.fromJson(Map<String, dynamic> json) {
    return _$SongUrlResponseFromJson(json);
  }

  @override
  String toString() {
    return 'SongUrlResponse{code: $code, data: $data}';
  }
}

@JsonSerializable(createToJson: false)
class SongDetail {
  final int? id;
  final String? url;
  final int? br;
  final int? size;
  final String? md5;
  final int? expi;
  final MediaType? type;
  final double? gain;
  final int? fee;

  // final dynamic uf;

  final int? payed;
  final int? flag;
  final bool? canExtend;

  // final dynamic? freeTrialInfo;
  final String? level;

  final EncodeType? encodeType;

  // final dynamic freeTrialPrivilege;
// final dynamic freeTimeTrialPrivilege;
  final int? urlSource;

  SongDetail({
    this.id,
    this.url,
    this.br,
    this.size,
    this.md5,
    this.expi,
    this.type,
    this.gain,
    this.fee,
    this.payed,
    this.flag,
    this.canExtend,
    // this.freeTrialInfo,
    this.level,
    this.encodeType,
    this.urlSource,
  });

  factory SongDetail.fromJson(Map<String, dynamic> json) {
    return _$SongDetailFromJson(json);
  }

  @override
  String toString() {
    return 'SongDetail{id: $id, url: $url, br: $br, size: $size, md5: $md5, expi: $expi, type: $type, gain: $gain, fee: $fee, payed: $payed, flag: $flag, canExtend: $canExtend, level: $level, encodeType: $encodeType, urlSource: $urlSource}';
  }
}
