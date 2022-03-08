import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'search.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class SearchClient {
  factory SearchClient(Dio dio, {String baseUrl}) = _SearchClient;

  ///
  /// 获取每日推荐歌曲
  ///
  /// 说明 : 调用此接口 , 可获得每日推荐歌曲 ( 需要登录 )
  ///
  @GET("/recommend/songs")
  Future<HttpResponse<DailySongResponse>> recommendSongs();

  ///
  /// 获取客户端歌曲下载 url
  ///
  /// 说明 :说明 : 使用 /song/url 接口获取的是歌曲试听 url,
  /// 但存在部分歌曲在非 VIP 账号上可以下载无损音质而不能试听无损音质,
  /// 使用此接口可使非 VIP 账号获取这些歌曲的无损音频
  ///
  @GET("/song/url")
  Future<SongUrlResponse> songUrl(@Query("id") String id);
}
