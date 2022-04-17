import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'playlist.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class PlaylistClient {
  factory PlaylistClient(Dio dio, {String baseUrl}) = _PlaylistClient;

  /// 获取歌单详情
  /// 说明 : 歌单能看到歌单名字, 但看不到具体歌单内容 , 调用此接口 , 传入歌单 id,
  /// 可以获取对应歌单内的所有的音乐(未登录状态只能获取不完整的歌单,登录后是完整的)，
  /// 但是返回的 trackIds 是完整的，tracks 则是不完整的，
  /// 可拿全部 trackIds 请求一次 song/detail 接口获取所有歌曲的详情 (https://github.com/Binaryify/NeteaseCloudMusicApi/issues/452)
  ///
  ///  必选参数 : id : 歌单 id
  ///
  ///  可选参数 : s : 歌单最近的 s 个收藏者,默认为 8
  ///
  ///  接口地址 : /playlist/detail
  ///
  ///  调用例子 : /playlist/detail?id=24381616
  @GET("/playlist/detail")
  Future<PlayDetailResponse> playlist(@Query("id") int id);

  /// 说明:
  /// https://neteasecloudmusicapi.vercel.app/#/?id=%e8%8e%b7%e5%8f%96%e6%ad%8c%e5%8d%95%e6%89%80%e6%9c%89%e6%ad%8c%e6%9b%b2
  @GET("/playlist/track/all")
  Future<TrackAllResponse> trackAll(
    @Query("id") int id, {
    @Query("limit") int? limit,
    @Query("offset") int? offset,
  });

  /// 获取歌词
  /// 说明 : 调用此接口 , 传入音乐 id 可获得对应音乐的歌词 ( 不需要登录 )
  ///
  ///  必选参数 : id: 音乐 id
  ///
  ///  接口地址 : /lyric
  ///
  ///  调用例子 : /lyric?id=33894312
  ///
  ///   返回数据如下图 : 获取歌词
  ///
  @GET("/lyric")
  Future<LyricResponse> lyric(@Query("id") int id);
}
