import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/image_widget.dart';
import 'package:flutter/material.dart';

class HomeSongList extends StatefulWidget {
  const HomeSongList({Key? key}) : super(key: key);

  @override
  State<HomeSongList> createState() => _HomeSongListState();
}

class _HomeSongListState extends State<HomeSongList> {
  Widget _buildCard(int index) {
    return Container(
      height: 149.w,
      width: 149.w,
      // padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(child: ImageWidget(Assets.icDefaultSongSheet.path, size: 145.w)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.w, right: 0.w, top: 33.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 19.w),
            child: Text(
              S.HomePage.recommendSongList,
              style: Theme.of(context).tsTitleBold,
            ),
          ),
          SizedBox(
            height: 145.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(width: 10.w),
                    _buildCard(index),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
