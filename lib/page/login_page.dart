import 'package:cloud_music/common/common.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   // NestLoginClient(dio).;
  //   // addPostFrame(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.loginPage.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // InputWidget(hintText: '手机号',),
            // InputWidget(textInputType: TextInputType.),
          ],
        ),
      ),
    );
  }
}
