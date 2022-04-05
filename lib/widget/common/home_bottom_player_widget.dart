import 'dart:ui';

import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';

class HomeBottomPlayerWidget extends StatefulWidget {
  const HomeBottomPlayerWidget({Key? key}) : super(key: key);

  static double get height => 194.w;

  @override
  State<HomeBottomPlayerWidget> createState() => _HomeBottomPlayerWidgetState();
}

class _HomeBottomPlayerWidgetState extends State<HomeBottomPlayerWidget> {
  Widget _buildBackground() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(26.w),
        topRight: Radius.circular(26.w),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12.w, sigmaY: 12.w),
        child: Container(
          width: 1.sw,
          height: HomeBottomPlayerWidget.height,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.6539),
                Colors.white.withOpacity(0.3639),
                Colors.white.withOpacity(0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlayer() {
    return Material(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: 100.w,
        width: 1.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.skip_previous, size: 27.w),
              onPressed: () {

              },
            ),
            SizedBox(width: 60.w),
            ImageWidget(Assets.icBtnPlay.path, size: 27.w),
            SizedBox(width: 60.w),
            IconButton(
              icon: Icon(Icons.skip_next, size: 27.w),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(),
        Positioned(bottom: 0, child: _buildPlayer()),
      ],
    );
  }
}
