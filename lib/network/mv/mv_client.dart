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

  //  获取 mv 数据
  //  说明 : 调用此接口 , 传入 mvid ( 在搜索音乐的时候传 type=1004 获得 ) , 可获取对应 MV 数据 ,
  //  数据包含 mv 名字 , 歌手 , 发布时间 , mv 视频地址等数据 , 其中 mv 视频 网易做了防盗链处理 ,
  //  可能不能直接播放 , 需要播放的话需要调用 ' mv 地址' 接口
  //
  //  必选参数 : mvid: mv 的 id
  //
  //  接口地址 : /mv/detail
  //
  //  调用例子 : /mv/detail?mvid=5436712
  @GET("/mv/detail")
  Future<DataWrapResponse<MvDetailResponse>> mvDetail(@Query("mvid") int mvId);

  //  获取 mv 点赞转发评论数数据
  //   说明 : 调用此接口 , 传入 mvid ( 在搜索音乐的时候传 type=1004 获得 ) , 可获取对应 MV 点赞转发评论数数据
  //
  //  必选参数 : mvid: mv 的 id
  //
  //  接口地址 : /mv/detail/info
  //
  //  调用例子 : /mv/detail/info?mvid=5436712
  @GET("/mv/detail/info")
  Future<MvInfo> mvDetailInfo(@Query("mvid") int mvId);
}
