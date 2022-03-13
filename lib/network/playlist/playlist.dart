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
  /// 说明 : 歌单能看到歌单名字, 但看不到具体歌单内容 , 调用此接口 , 传入歌单 id, 可 以获取对应歌单内的所有的音乐(未登录状态只能获取不完整的歌单,登录后是完整的)，但是返回的 trackIds 是完整的，tracks 则是不完整的，可拿全部 trackIds 请求一次 song/detail 接口获取所有歌曲的详情 (https://github.com/Binaryify/NeteaseCloudMusicApi/issues/452)
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
}
