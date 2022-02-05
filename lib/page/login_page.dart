import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/network/network.dart';
import 'package:cloud_music/route/routes.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController phoneController = TextEditingController()..text = 'xxxxx';
  late final TextEditingController captchaController = TextEditingController();
  late final nestLoginClient = NestLoginClient(dio);

  void requestCaptcha() {
    nestLoginClient.sentCaptcha(phoneController.text).then((response) {});
  }

  void requestLogin() {
    nestLoginClient
        .cellPhone(phoneController.text, '', captcha: captchaController.text)
        .then((response) {
      final action = LoginStateAction(nestLoginResponse: response, action: LoginAction.login);
      context.read<LoginBloc>().add(action);
      R.of(context).pop();
    });
  }

  void requestStatus() {
    nestLoginClient.loginStatus().then((response) {
      final action = LoginStateAction(
        nestLoginStatusResponse: response.data,
        action: LoginAction.login,
      );

      context.read<LoginBloc>().add(action);
      R.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.loginPage.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputWidget(
              controller: phoneController,
              hintText: S.loginPage.hintPhone,
              suffixIcon: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  requestCaptcha();
                },
              ),
            ),
            InputWidget(
              controller: captchaController,
              hintText: S.loginPage.hintCaptcha,
            ),
            TextButton(
              child: Text(S.loginPage.btLogin),
              onPressed: () {
                requestLogin();
              },
            ),
            TextButton(
              child: Text('用户状态'),
              onPressed: () {
                requestStatus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
