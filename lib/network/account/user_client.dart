import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/model.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class NestUserClient {
  factory NestUserClient(Dio dio, {String baseUrl}) = _NestUserClient;

  ///
  /// 获取账号信息
  ///
  /// 说明 : 登录后调用此接口 ,可获取用户账号信息
  ///
  @GET("/user/account")
  Future<NestUserAccountResponse> userAccount();

  ///
  /// 获取用户详情
  ///
  /// 说明 : 登录后调用此接口 , 传入用户 id, 可以获取用户详情
  ///
  @GET("/user/detail")
  Future<NestUserDetailResponse> userDetail();

  /// 获取用户播放记录
  /// 说明 : 登录后调用此接口 , 传入用户 id, 可获取用户播放记录
  ///
  ///  必选参数 : uid : 用户 id
  ///
  ///  可选参数 : type : type=1 时只返回 weekData, type=0 时返回 allData
  ///
  ///  接口地址 : /user/record
  ///
  ///  调用例子 : /user/record?uid=32953014&type=1
  @GET("/user/record")
  Future<NestUserRecordResponse> userRecord(
    @Query("uid") int uid, {
    @Query("type") int type = 0,
  });
}
