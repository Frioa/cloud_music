import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lyric.freezed.dart';
part 'lyric.g.dart';

@freezed
class LyricResponse extends BaseHttpResponse with _$LyricResponse {
  const factory LyricResponse({
    bool? sgc,
    bool? sfy,
    bool? qfy,
    required int code,
    Lrc? lrc,
    @JsonKey(name: 'klyric') required Lrc? kLyric,
    @JsonKey(name: 'tlyric') required Lrc? tLyric,
  }) = _LyricResponse;

  factory LyricResponse.init() => LyricResponse(
        code: 404,
        lrc: Lrc.init(),
        kLyric: Lrc.init(),
        tLyric: Lrc.init(),
      );

  factory LyricResponse.fromJson(Map<String, dynamic> json) => _$LyricResponseFromJson(json);
}

@freezed
class Lrc with _$Lrc {
  const factory Lrc({required int version, required String lyric}) = _Lrc;

  factory Lrc.init() => const Lrc(version: 0, lyric: '');

  factory Lrc.fromJson(Map<String, dynamic> json) => _$LrcFromJson(json);
}

@freezed
class Lyric with _$Lyric {
  static final double itemHeight = 33.w;

  const factory Lyric({
    required Duration time,
    required String content,
    required double height,
  }) = _Lyric;

  factory Lyric.init() => const Lyric(
        time: Duration.zero,
        content: '',
        height: 0.0,
      );

}
