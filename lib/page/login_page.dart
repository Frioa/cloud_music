import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/route/routes.dart';
import 'package:cloud_music/utils/extension/ui_extension.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    addPostFrame(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录页')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () async {
                context.read<AppBloc>().add(AppEvent.darkTheme);
              },
              child: const Text("toggleTheme"),
            ),
            TextButton(
              onPressed: () async {
                PageRouter.of(context).push(Routes.loginPageConfig);
              },
              child: const Text("push"),
            ),
          ],
        ),
      ),
    );
  }
}
