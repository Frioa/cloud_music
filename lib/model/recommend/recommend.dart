import 'package:cloud_music/model/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommend.g.dart';

@JsonSerializable(createToJson: false)
class DailySongResponse {
  final List<Song> dailySongs;
  final List<RecommendReason> recommendReasons;

  DailySongResponse({this.dailySongs = const [], this.recommendReasons = const []});

  factory DailySongResponse.fromJson(Map<String, dynamic> json) {
    return _$DailySongResponseFromJson(json);
  }

  @override
  String toString() {
    return 'DailySongResponse{dailySongs: $dailySongs, recommendReasons: $recommendReasons}';
  }
}

@JsonSerializable(createToJson: false)
class Song {
  final String name;
  final int id;
  final int? pst;
  final int? t;
  final List<Artist> ar;

  // final List<dynamic> alia;
  final int? pop;
  final String? rt;
  final int? fee;
  final int? v;

  // final dynamic crbt;
  final String? cf;
  final AL? al;
  final int? dt;
  final String? rtUrl;
  final int? ftype;
  final int? djId;
  final int? copyright;
  final String? reason;

  Song({
    this.name = '',
    this.id = 0,
    this.pst,
    this.t,
    this.ar = const [],
    this.pop,
    this.rt,
    this.fee,
    this.v,
    this.cf,
    this.al,
    this.dt,
    this.rtUrl,
    this.ftype,
    this.djId,
    this.copyright,
    this.reason,
  });

  factory Song.fromJson(
    Map<String, dynamic> json,
  ) {
    return _$SongFromJson(json);
  }

  String get singerAlbumDesc {
    String singer = ar.isEmpty ? '' : ar[0].name;
    if (ar.length > 1) {
      singer = '${ar[0].name}/${ar[1].name}';
    }

    return singer + ' - ' + (al?.name ?? '');
  }

  @override
  String toString() {
    return 'Song{name: $name, id: $id, pst: $pst, t: $t, ar: $ar, pop: $pop, rt: $rt, fee: $fee, v: $v, cf: $cf, al: $al, dt: $dt, rtUrl: $rtUrl, ftype: $ftype, djId: $djId, copyright: $copyright, reason: $reason}';
  }
}

@JsonSerializable(createToJson: false)
class AL {
  final int id;
  final String name;
  final String? picUrl;

  // final dynamic tns;
  final String? pic_str; // ignore: non_constant_identifier_names
  final int? pic;

  AL({
    this.id = 0,
    this.name = '',
    this.picUrl,
    // this.tns,
    this.pic_str, // ignore: non_constant_identifier_names
    this.pic,
  });

  factory AL.fromJson(Map<String, dynamic> json) {
    return _$ALFromJson(json);
  }

  @override
  String toString() {
    return 'AL{id: $id, name: $name, picUrl: $picUrl, pic_str: $pic_str, pic: $pic}';
  }
}

@JsonSerializable(createToJson: false)
class RecommendReason {
  final int songId;
  final String reason;

  RecommendReason({this.songId = 0, this.reason = ''});

  factory RecommendReason.fromJson(Map<String, dynamic> json) {
    return _$RecommendReasonFromJson(json);
  }

  @override
  String toString() {
    return 'RecommendReason{songId: $songId, reason: $reason}';
  }
}
