import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'top.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class TopClient {
  factory TopClient(Dio dio, {String baseUrl}) = _TopClient;


  // 热门歌手
  // 说明 : 调用此接口 , 可获取热门歌手数据
  //
  //  可选参数 : limit: 取出数量 , 默认为 50
  //
  //   offset: 偏移数量 , 用于分页 , 如 :( 页数 -1)*50, 其中 50 为 limit 的值 , 默认 为 0
  //
  //  接口地址 : /top/artists
  //
  //  调用例子 : /top/artists?offset=0&limit=30
  @GET("/top/artists")
  Future<TopArtistsResponse> topArtists();

}
