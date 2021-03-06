import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/user/user.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/image_widget.dart';
import 'package:flutter/material.dart';

class HomeUserSongList extends StatefulWidget {
  final int? uid;

  const HomeUserSongList({Key? key, required this.uid}) : super(key: key);

  @override
  State<HomeUserSongList> createState() => _HomeUserSongListState();
}

class _HomeUserSongListState extends State<HomeUserSongList> {
  @override
  void didUpdateWidget(covariant HomeUserSongList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.uid != widget.uid) {
      requestUserSheet();
    }
  }

  void requestUserSheet() {
    if (widget.uid == null) return;

    context.read<UserNewBloc>().add(RequestUserSheetEvent(widget.uid!));
  }

  Widget _buildCard(ViewModel<UserSheetResponse> vm, int index) {
    final sheet = vm.response?.playlist[index];

    return ClipRRect(
      borderRadius: BorderRadius.all(Theme.of(context).radius20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 145.w,
            width: 145.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: ImageWidget(
                    !vm.hasData ? Assets.icDefaultSongSheet.path : sheet!.coverImgUrl,
                    size: 145.w,
                  ),
                  onTap: () {
                    if (!vm.hasData) return;

                    R.of(context).push(
                      Pages.playlistDetail,
                      parameter: {PageKey.songListId: sheet!.id},
                    );
                  },
                ),
              ],
            ),
          ),
          if (vm.hasData)
            Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Theme.of(context).radius10,
                  topRight: Theme.of(context).radius10,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8.w, sigmaY: 8.w),
                  child: Container(
                    alignment: Alignment.center,
                    width: 133.w,
                    height: 53.w,
                    padding: EdgeInsets.all(10.w),
                    color: Colors.black.withOpacity(0.2),
                    child: AutoSizeText(
                      sheet!.name,
                      style: Theme.of(context).tsDesc2Bold.copyWith(color: Colors.white),
                      maxLines: 2,
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
    return BlocBuilder<UserNewBloc, UserNewState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 0.w, right: 0.w, top: 33.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onLongPress: () {
                  requestUserSheet();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, bottom: 19.w),
                  child: Text(
                    S.HomePage.userSheet,
                    style: Theme.of(context).tsTitleBold,
                  ),
                ),
              ),
              SizedBox(
                height: 145.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      state.userSheetVm.hasData ? state.userSheetVm.response!.playlist.length : 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(width: 20.w),
                        _buildCard(state.userSheetVm, index),
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
