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

}
