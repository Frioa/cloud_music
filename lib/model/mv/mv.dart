export 'mv_detail.dart';

import 'package:json_annotation/json_annotation.dart';

part 'mv.g.dart';

@JsonSerializable(createToJson: false)
class MVURLResponse {
  final int id;
  final String url;

  // 分辨率
  final int r;
  final int size;
  final String md5;
  final int code;
  final int expi;
  final int fee;
  final int mvFee;
  final int st;
  final String msg;

  MVURLResponse({
    this.id = 0,
    this.url = "",
    this.r = 0,
    this.size = 0,
    this.md5 = "",
    this.code = -1,
    this.expi = 0,
    this.fee = 0,
    this.mvFee = 0,
    this.st = 0,
    this.msg = "",
  });

  factory MVURLResponse.fromJson(Map<String, dynamic> json) {
    return _$MVURLResponseFromJson(json);
  }

  @override
  String toString() {
    return 'MVURLResponse{id: $id, url: $url, r: $r, size: $size, md5: $md5, code: $code, expi: $expi, fee: $fee, mvFee: $mvFee, st: $st, msg: $msg}';
  }
}
