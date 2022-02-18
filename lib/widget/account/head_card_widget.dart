import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/route/routes.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadCardWidget extends StatelessWidget {
  const HeadCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final profile = state.nestLoginStatusResponse?.profile;
        return GestureDetector(
          onTap: () {
            if (state.isLogin) return;

            R.of(context).push(Routes.loginPageConfig);
          },
          child: SizedBox(
            height: 140.r,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    child: SizedBox(
                      height: 82.r,
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
                          profile?.avatarUrl ?? Assets.icDefaultAvatar.path,
                          size: 64.r,
                        ),
                      ),
                      SizedBox(height: 10.r),
                      Text(
                        profile?.nickname ?? S.myPage.loginBtn,
                        style: Theme.of(context).tsNavigator,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
