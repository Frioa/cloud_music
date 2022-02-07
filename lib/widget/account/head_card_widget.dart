import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadCardWidget extends StatelessWidget {
  const HeadCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      print('object $state');
      return SizedBox(
        height: 140.h,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                child: SizedBox(
                  height: 82.h,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: ImageWidget(
                      state.nestLoginStatusResponse?.profile?.avatarUrl ??
                          Assets.icDefaultAvatar.path,
                      size: 64.h,
                    ),
                  ),
                  Text(
                    '立即登录>',
                    style: Theme.of(context).tsNavigator,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
