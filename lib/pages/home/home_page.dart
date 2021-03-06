import 'dart:async';

import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/utils/global_context_handler.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> {
  late StreamSubscription<BaseGlobalContextEvent> _globalEventSubscription;

  @override
  void initState() {
    super.initState();

    _globalEventSubscription = GlobalContextHandler().handleEvent(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LoginNewBloc>().add(const LoginEvent.loginStatus());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _globalEventSubscription.cancel();
    super.dispose();
  }

  Widget _buildHeaderText() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        // final profile = state.nestLoginStatusResponse?.profile;
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Find the best music for you',
                  style: Theme.of(context).tsTitleBold.copyWith(fontSize: 28.sp),
                ),
              ),
            ),
            Assets.icPotinRight.image(width: 125.w, height: 58.w)
            // ImageWidget(Assets.icPotinRight.path, width: 125.w, height: 58.w),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginNewBloc, LoginNewState>(
      builder: (context, state) {
        final profile = state.nestPhoneLoginVm?.response?.profile;

        return Stack(
          children: [
            Scaffold(
              appBar: AppBarWidget.build(
                  leftImageUrl: profile?.avatarUrl ?? Assets.icDefaultAvatar.path,
                  rightImageUrl: Assets.icSearchLight,
                  onLeadingTap: () {
                    // if (state.isLogin) return;
                    R.of(context).push(Pages.login);
                  },
                  onRightTap: () {
                    R.of(context).push(Pages.newLogin);
                  }),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 29.w),
                    _buildHeaderText(),
                    const TopArtistsWidget(),
                    const HomeSongList(),
                    HomeUserSongList(uid: profile?.userId),
                    SizedBox(height: HomeBottomPlayerWidget.height + 26.w)
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
