import 'dart:ui';

import 'package:cloud_music/bloc/common/view_model.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/image_widget.dart';
import 'package:flutter/material.dart';

import '../../bloc/recommend/recommend.dart';

class HomeSongList extends StatefulWidget {
  const HomeSongList({Key? key}) : super(key: key);

  @override
  State<HomeSongList> createState() => _HomeSongListState();
}

class _HomeSongListState extends State<HomeSongList> {
  Widget _buildCard(ViewModel<RecommendSheetResponse> vm, int index) {
    final recommend = vm.response!.recommend[index];

    return ClipRRect(
      borderRadius: BorderRadius.circular(24.w),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 145.w,
            width: 145.w,
            // padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: ImageWidget(
                    !vm.hasData ? Assets.icDefaultSongSheet.path : recommend.picUrl,
                    size: 145.w,
                  ),
                  onTap: () {
                    if (!vm.hasData) return;

                    R.of(context).push(
                      Pages.playlistDetail,
                      parameter: {PageKey.songListId: recommend.id},
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26.w),
                topRight: Radius.circular(26.w),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.w, sigmaY: 8.w),
                child: Container(
                  alignment: Alignment.center,
                  width: 133.w,
                  height: 53.w,
                  color: Colors.black.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Text(
                            recommend.name,
                            style: Theme.of(context).tsDescBold.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendBloc, RecommendState>(
      builder: (context, state) {
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
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(width: 20.w),
                        _buildCard(state.recommendSheetResponse, index),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
