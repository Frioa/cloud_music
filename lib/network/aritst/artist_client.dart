import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/artists/artists.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'artist_client.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class ArtistClient {
  factory ArtistClient(Dio dio, {String baseUrl}) = _ArtistClient;

  // 获取歌手详情
  // 说明 : 调用此接口 , 传入歌手 id, 可获得获取歌手详情
  //
  //  必选参数 : id: 歌手 id
  //
  //  接口地址 : /artist/detail
  //
  //  调用例子 : /artist/detail?id=11972054 (Billie Eilish)
  @GET("/artist/detail")
  Future<DataWrapResponse<ArtistsDetailResponse>> artistsDetail(@Query("id") int id);
}
