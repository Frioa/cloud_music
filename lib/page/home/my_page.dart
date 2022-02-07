import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/network/network.dart';
import 'package:cloud_music/widget/account/head_card_widget.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    super.initState();
    NestLoginClient(dio).loginStatus().then((response) {
      final action = LoginStateAction(
        nestLoginStatusResponse: response.data,
        action: LoginAction.loginStatus,
      );
      context.read<LoginBloc>().add(action);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
        appBar: AppBar(
          leading: IconButtonWidget(
            data: Icons.menu_sharp,
            onPressed: () {},
          ),
          actions: [
            IconButtonWidget(
              data: Icons.search_rounded,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeadCardWidget(),
            ],
          ),
        ));
  }
}
