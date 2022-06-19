import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';

import 'mv_app_lifecycle_mixin.dart';

class MVPage extends StatefulWidget {
  const MVPage({Key? key}) : super(key: key);

  @override
  State<MVPage> createState() => _MVPageState();
}

class _MVPageState extends BasePageState<MVPage>
    with WidgetsBindingObserver, MvActionMixin, PlayerLifecycMixin, MvAppLifecycleMixin {
  double get footerHeight => 396.w;

  @override
  void dispose() {
    PlayerController.instance.stop();
    super.dispose();
  }

  Widget _buildVideoPlayer() {
    final isCenter = videoHeight >= (MediaQuery.of(context).size.height - footerHeight);
    final videoWidget = VideoPlayerWidget(
      pauseIconUrl: Assets.icBtnPlay.path,
      controller: PlayerController.instance,
    );

    if (isCenter) {
      return Center(child: videoWidget);
    }

    return Positioned(bottom: footerHeight, child: videoWidget);
  }

  Widget _buildMvInfo() {
    if (song == null) return const SizedBox();

    Widget _buildMvTitle() {
      final image = context.watch<ArtistBloc>().state.artistDetailVM.response?.data.artist.cover;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImageWidget(
                image ?? Assets.icDefaultAvatar.path,
                size: 36.w,
                clipOval: true,
                fadeIn: true,
                // fit: BoxFit.fitWidth,
              ),
              SizedBox(width: 8.w),
              Text(song!.ar[0].name, style: L.tsTitleDark),
            ],
          ),
          SizedBox(height: 12.w),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.2),
                  width: 26.w,
                  height: 16.w,
                  child: Text('MV', style: L.tsDescDark2),
                ),
              ),
              SizedBox(width: 8.w),
              Text(song!.name, style: L.tsDescDark),
            ],
          ),
          SizedBox(height: 10.w),
          Row(
            children: [
              ImageWidget(
                Assets.icMvNote,
                width: 15.w,
                height: 20.w,
                color: L.white2,
              ),
              SizedBox(
                height: 20.w,
                width: 140.w,
                child: MarqueeWidget(
                  text: song!.singerAlbumDesc,
                  style: L.tsDescDark,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget _buildIcons() {
      final data = context.watch<MVBloc>().state.mvDetailVM?.response?.data;
      Widget _buildIcon(String url, String? msg) {
        if (msg == null) return const SizedBox();

        return Column(
          children: [
            SizedBox(height: 8.w),
            ImageWidget(url, size: 28.w, color: L.white),
            SizedBox(height: 8.w),
            Text(msg, style: L.tsDescDark),
            SizedBox(height: 8.w),
          ],
        );
      }

      return Column(
        children: [
          _buildIcon(Assets.icMvPraise, data?.likedCount.tenThousandDesc),
          _buildIcon(Assets.icMvComment, data?.commentCount.tenThousandDesc),
          _buildIcon(Assets.icMvForwarding.path, data?.shareCount.tenThousandDesc),
          _buildIcon(Assets.icMvCollection, S.mvPage.collection),
          SizedBox(height: 12.w),
          RotationWidget(
            speedMilliseconds: 10000,
            child: ImageWidget(
              song!.al!.picUrl!,
              size: 35.w,
              clipOval: true,
            ),
          ),
        ],
      );
    }

    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildMvTitle(),
          _buildIcons(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: footerHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildMvInfo(),
          SizedBox(
            height: 16.w,
            child: PlayerProgressWidget(
              controller: PlayerController.instance,
              backgroundColor: Colors.transparent,
              progressColor: Colors.white38,
            ),
          ),
          SizedBox(height: 12.w),
          Container(
            height: 45.w,
            width: 1.sw,
            padding: EdgeInsets.only(left: 16.w),
            child: Text(S.mvPage.commentIntro, style: L.tsDescDark2),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MVBloc, MVState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildVideoPlayer(),
                Positioned(bottom: 0, child: _buildFooter()),
              ],
            ),
          ),
        );
      },
    );
  }
}
