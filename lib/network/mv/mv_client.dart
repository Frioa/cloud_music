import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'mv_client.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class MVClient {
  factory MVClient(Dio dio, {String baseUrl}) = _MVClient;

  // 说明 : 调用此接口 , 传入 mv id,可获取 mv 播放地址
  //
  //  必选参数 : id: mv id
  //
  //  可选参数 : r: 分辨率,默认 1080,可从 /mv/detail 接口获取分辨率列表
  //
  //  接口地址 : /mv/url
  //
  //  调用例子 : /mv/url?id=5436712 /mv/url?id=10896407&r=1080
  @GET("/mv/url")
  Future<DataWrapResponse<MVURLResponse>> mvUrl(@Query("id") int id, {@Query("r") int r = 240});
}
