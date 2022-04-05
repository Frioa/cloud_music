import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/image_widget.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewHomePage extends StatefulWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  Widget _buildHeaderText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ImageWidget(Assets.icPotinRight.path),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBarWidget.build(
            left: Assets.icDefaultAvatar.path,
            right: Assets.icSearchLight,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.w),
                _buildHeaderText(),
                const TopArtistsWidget(),
                const HomeSongList(),
                const HomeSongList(),
                SizedBox(height: HomeBottomPlayerWidget.height)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: HomeBottomPlayerWidget(),
        )
      ],
    );
  }
}
