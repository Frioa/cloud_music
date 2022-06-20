
import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/utils/utils.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage> {
  final FocusNode phoneFocus = FocusNode();
  final FocusNode captchaFocus = FocusNode();
  late final TextEditingController phoneController = TextEditingController();
  late final TextEditingController captchaController = TextEditingController();
  late final nestLoginClient = NestLoginClient(dio);

  @override
  void initState() {
    super.initState();
    phoneFocus.addListener(() {
      setState(() {});
    });
    readCache();
  }

  @override
  void dispose() {
    phoneFocus.dispose();
    captchaFocus.dispose();
    super.dispose();
  }

  void readCache() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      final sp = await SharedPreferences.getInstance();
      final cachePhone = sp.getString(SpKey.phone);
      if (cachePhone != null) phoneController.text = cachePhone;
    });
  }

  void requestCaptcha() {
    nestLoginClient.sentCaptcha(phoneController.text).then((response) {});
  }

  void requestLogin() {
    final phone = phoneController.text;

    nestLoginClient.cellPhone(phone, '', captcha: captchaController.text).then(
      (response) async {
        final action = LoginStateAction(nestLoginResponse: response, action: LoginAction.login);
        context.read<LoginBloc>().add(action);
        final sp = await SharedPreferences.getInstance();
        sp.setString(SpKey.phone, phone);
        requestStatus();
        R.of(context).pop();
      },
    );
  }

  void requestStatus() {
    nestLoginClient.loginStatus().then((response) {
      final action = LoginStateAction(
        nestLoginStatusResponse: response.data,
        action: LoginAction.loginStatus,
      );

      context.read<LoginBloc>().add(action);
      context.read<LoginBloc>().add(const LoginStateAction(action: LoginAction.requestLoginStatus));
      context.read<TopBloc>().add(RequestTopArtistsEvent());
      context.read<RecommendBloc>().add(RequestRecommendSheetEvent());

      R.of(context).pop();
    });
  }

  Widget _buildInput() {
    return Column(
      children: [
        InputWidget(
          controller: phoneController,
          hintText: S.loginPage.hintPhone,
          focusNode: phoneFocus,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: phoneFocus.hasFocus
                ? () {
                    requestCaptcha();
                  }
                : null,
          ),
        ),
        SizedBox(height: 22.w),
        InputWidget(
          focusNode: captchaFocus,
          controller: captchaController,
          hintText: S.loginPage.hintCaptcha,
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              nestLoginClient.registerAnonimous().then((value) {
                R.of(context).pop();
              });
            },
            child: Center(
              child: Text(
                '游客登录',
                style: Theme.of(context).tsDesc.copyWith(
                      fontSize: 20.w,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              requestLogin();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: Container(
                height: 41.w,
                alignment: Alignment.center,
                color: L.primaryColor,
                child: Text(
                  S.loginPage.btLogin,
                  style: L.tsDesc.copyWith(
                        fontSize: 20.w,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// TODO: Appbar
      appBar: AppBar(
        // title: Text(
        //   S.loginPage.title,
        //   style: Theme.of(context).tsDesc,
        // ),
        // leading: Text(('data')),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom > 0 ? 239.w - 50.w : 239.w,
            ),
            Text(
              S.loginPage.btLogin,
              style: Theme.of(context).tsDescBold.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40.w,
                  ),
            ),
            SizedBox(height: 19.w),
            _buildInput(),
            // TextButton(
            //   child: Text(S.loginPage.btLogin),
            //   onPressed: () {
            //     requestLogin();
            //   },
            // ),
            SizedBox(height: 22.w),
            _buildButton(),
            // TextButton(
            //   child: const Text('用户状态'),
            //   onPressed: () {
            //     requestStatus();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
