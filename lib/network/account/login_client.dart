import 'package:cloud_music/common/common.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'login_client.g.dart';

///
/// 登录
/// 说明 : 登录有三个接口,建议使用encodeURIComponent对密码编码或者使用POST请求,
/// 避免某些特殊字符无法解析,如#(#在 url 中会被识别为 hash,而不是 query)
///
@RestApi(baseUrl: Constants.nestBaseUrl)
@JsonSerializable(createFactory: false, createToJson: false)
abstract class NestLoginClient {
  factory NestLoginClient(Dio dio, {String baseUrl}) = _NestLoginClient;

  ///
  /// 手机登录
  ///
  /// 必选参数 :
  /// phone: 手机号码, password: 密码
  ///
  /// 可选参数 :
  // countrycode: 国家码，用于国外手机号登录，例如美国传入：1
  //
  // md5_password: md5 加密后的密码,传入后 password 参数将失效
  //
  // captcha: 验证码,使用 /captcha/sent接口传入手机号获取验证码,调用此接口传入验证码,可使用验证码登录,传入后 password 参数将失效
  ///
  ///
  @GET("/login/cellphone")
  Future<NestLoginResponse> cellPhone(
    @Query("phone") String phone,
    @Query("password") String password, {
    @Query("md5_password") String? md5Password,
    @Query("captcha") String? captcha,
  });

  ///
  /// 邮箱登录
  ///
  /// 必选参数 :
  /// email: 163 网易邮箱, password: 密码
  ///
  /// 可选参数 :
  /// md5_password: md5 加密后的密码,传入后 password 参数将失效
  ///
  /// 完成登录后 , 会在浏览器保存一个 Cookies 用作登录凭证 ,
  /// 大部分 API 都需要用到这个 Cookies,非跨域情况请求会自动带上 Cookies,跨域情况参考调用前须知
  ///
  ///
  @GET("/login")
  Future<NestLoginResponse> email(
    @Query("email") String email,
    @Query("password") String password, {
    @Query("md5_password") String? md5Password,
  });

  /// 二维码登录：
  ///
  /// 说明: 二维码登录涉及到 3 个接口,调用务必带上时间戳,防止缓存。
  ///
  /// 1. 二维码 key 生成接口
  @GET("/login/qr/key")
  Future<DataWrapResponse<NestQrKeyResponse>> getQrKey({
    @Query("timestamp") int? timestamp,
  });

  /// 二维码生成接口:
  ///
  /// 必选参数: key,由第一个接口生成
  /// 可选参数: qrimg 传入后会额外返回二维码图片 base64 编码
  ///
  @GET("/login/qr/create")
  Future<DataWrapResponse<NestQrCreateResponse>> getQrCreate(
    @Query("key") String key, {
    @Query("qrimg") bool qrimg = true,
    @Query("timestamp") int? timestamp,
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
  Future<NestQrCheckResponse> getQrCheck(
    @Query("key") String key, {
    @Query("timestamp") int? timestamp,
  });

  ///
  /// 发送验证码
  ///
  /// 说明 : 调用此接口 ,传入手机号码, 可发送验证码
  ///
  /// 必选参数 : phone: 手机号码
  /// 可选参数 : ctcode: 国家区号,默认 86 即中国
  ///
  @GET("/captcha/sent")
  Future<VerifyNestCaptchaResponse> sentCaptcha(@Query("phone") String phone);

  ///
  /// 验证验证码
  ///
  /// 说明 : 调用此接口 ,传入手机号码和验证码, 可校验验证码是否正确
  ///
  /// 必选参数 : phone: 手机号码, captcha: 验证码
  /// 可选参数 : ctcode: 国家区号,默认 86 即中国
  ///
  @GET("/captcha/verify")
  Future<VerifyNestCaptchaResponse> verifyCaptcha(
    @Query("phone") String phone,
    @Query("captcha") String captcha,
  );

  ///
  /// 登录状态
  ///
  // 说明 : 调用此接口,可获取登录状态
  //
  @GET("/login/status")
  Future<DataWrapResponse<NestLoginStatusResponse>> loginStatus();

  ///
  /// 刷新登录
  ///
  /// 说明 : 调用此接口 , 可刷新登录状态
  //
  @GET("/login/refresh")
  Future<BaseHttpResponse> refreshLogin();
}
