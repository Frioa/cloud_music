import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/model.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'login.g.dart';

@RestApi(baseUrl: Constants.nestBase)
@JsonSerializable(createFactory: false)
abstract class NestLoginClient {
  factory NestLoginClient(Dio dio, {String baseUrl}) = _NestLoginClient;

  /// 二维码 key 生成接口
  @GET("/login/qr/key")
  Future<HttpResponse<QrKeyResponse>> getQrKey();

  /// 二维码生成接口
  ///
  /// 必选参数: key,由第一个接口生成
  // 可选参数: qrimg 传入后会额外返回二维码图片 base64 编码
  @GET("/login/qr/create")
  Future<HttpResponse<QrCreateResponse>> getQrCreate(
    @Query("key") String key, {
    @Query("qrimg") bool qrimg = true,
  });

  /// 二维码检测扫码状态接口
  ///
  /// 说明: 轮询此接口可获取二维码扫码状态,
  /// 800 为二维码过期,
  /// 801 为等待扫码,
  /// 802 为待确认,
  /// 803 为授权登录成功(803 状态码下会返回 cookies)
  ///
  /// 必选参数: key,由第一个接口生成
  @GET("/login/qr/check")
  Future<QrCheckResponse> getQrCheck(@Query("key") String key);
}
