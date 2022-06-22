import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/pages/account/login_phone_mixin.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';

enum LoginPageType { phone, email, qr }

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({Key? key}) : super(key: key);

  @override
  BasePageState<NewLoginPage> createState() => _NewLoginPageState();
}

class _NewLoginPageState extends BasePageState<NewLoginPage> with LoginPhoneMixin {
  LoginPageType type = LoginPageType.phone;

  String get _title {
    switch (type) {
      case LoginPageType.phone:
        return S.loginPage.phoneAppBar;
      case LoginPageType.email:
        return '';
      case LoginPageType.qr:
        return '';
    }
  }

  Widget _buildBody() {
    switch (type) {
      case LoginPageType.phone:
        return buildPhoneBody();
      case LoginPageType.email:
        return const SizedBox();
      case LoginPageType.qr:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButtonWidget(),
        title: Text(_title, style: L.tsTitleBoldAuto),
      ),
      body: Padding(
        padding: EdgeInsets.all(L.pagePadding),
        child: _buildBody(),
      ),
    );
  }
}
