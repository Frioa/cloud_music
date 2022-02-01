import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/model.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'login.g.dart';

///
/// 登录
// 说明 : 登录有三个接口,建议使用encodeURIComponent对密码编码或者使用POST请求,
// 避免某些特殊字符无法解析,如#(#在 url 中会被识别为 hash,而不是 query)
///
@RestApi(baseUrl: Constants.nestBase)
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
  Future<NestCallPhoneResponse> cellPhone(
    @Query("phone") String phone,
    @Query("password") String password, {
    @Query("md5_password") String? md5Password,
    @Query("captcha") String? captcha,
  });

  /// 二维码 key 生成接口
  @GET("/login/qr/key")
  Future<HttpResponse<NestQrKeyResponse>> getQrKey();

  /// 二维码生成接口
  ///
  /// 必选参数: key,由第一个接口生成
  // 可选参数: qrimg 传入后会额外返回二维码图片 base64 编码
  @GET("/login/qr/create")
  Future<HttpResponse<NestQrCreateResponse>> getQrCreate(
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
  Future<NestQrCheckResponse> getQrCheck(@Query("key") String key);

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
}
