import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopArtistsWidget extends StatefulWidget {
  const TopArtistsWidget({Key? key}) : super(key: key);

  @override
  State<TopArtistsWidget> createState() => _TopArtistsState();
}

class _TopArtistsState extends State<TopArtistsWidget> {
  Widget _buildCard(int index) {
    return Container(
      height: 65.w,
      width: 179.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        color: index % 2 == 0
            ? const Color(0xff9570FF).withOpacity(0.1)
            : const Color(0xff6FCF97).withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: ImageWidget(Assets.icDefaultAvatar.path, size: 37.w),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ayesha Ruhin', style: Theme.of(context).tsTitleBold2),
              SizedBox(width: 2.w),
              Text('Some Feeling', style: Theme.of(context).tsDesc),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.w, right: 0.w, top: 24.w),
      child: SizedBox(
        height: 65.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(width: 23.w),
                _buildCard(index),
              ],
            );
          },
        ),
      ),
    );
  }
}
