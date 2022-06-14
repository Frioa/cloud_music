import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/player_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:media/media.dart';

class MVPage extends StatefulWidget {
  const MVPage({Key? key}) : super(key: key);

  @override
  State<MVPage> createState() => _MVPageState();
}

class _MVPageState extends BasePageState<MVPage> {
  Song? song;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    song = R.of(context).getParameter<Song>(PageKey.mvSong);

    if (song != null) {
      context.read<MVBloc>().add(MVEvent.requestMVURL(song!.mv, onSuccess: onMvUrlSuccess));
    }
    logger.d("mv id: ${song?.mv}");
  }

  void onMvUrlSuccess() {
    if (!mounted) return;
    final url = context.read<MVBloc>().state.mvUrlVm?.response?.data.url;
    if (url == null) return;

    PlayerController.instance.play(url);
  }

  Widget _buildVideoPlayer() {
    return Container(
      margin: EdgeInsets.only(bottom: 100.w),
      child: VideoPlayerWidget(
        pauseIconUrl: Assets.icBtnPlay.path,
        controller: PlayerController.instance,
      ),
    );
  }

  Widget _buildMvInfo() {
    if (song == null) return const SizedBox();

    Widget _buildMvTitle() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImageWidget(
                song!.al!.picUrl!,
                size: 35.w,
                cacheHeight: 35.w.toInt(),
                cacheWidth: 35.w.toInt(),
                clipOval: true,
              ),
              SizedBox(width: 8.w),
              Text(
                song!.ar[0].name,
                style: Theme.of(context).tsTitleDark,
              ),
            ],
          ),
          SizedBox(height: 10.w),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.2),
                  width: 26.w,
                  height: 16.w,
                  child: Text(
                    'MV',
                    style: Theme.of(context).tsDescDark2,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                song!.name,
                style: Theme.of(context).tsDescDark,
              ),
            ],
          ),
          SizedBox(height: 10.w),
          SizedBox(
            width: 140.w,
            child: Row(
              children: [
                Marquee(
                  text: song!.singerAlbumDesc + "  " + song!.singerAlbumDesc,
                  style: Theme.of(context).tsDescDark,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget _buildIcons() {
      return Column(
        children: [
          Row(
            children: [
              ImageWidget(
                song!.al!.picUrl!,
                size: 35.w,
                cacheHeight: 35.w.toInt(),
                cacheWidth: 35.w.toInt(),
                clipOval: true,
              )
            ],
          ),
        ],
      );
    }

    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMvTitle(),
          _buildIcons(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        _buildMvInfo(),
        PlayerProgressWidget(
          controller: PlayerController.instance,
          backgroundColor: Colors.transparent,
          progressColor: Colors.white38,
        ),
        SizedBox(height: 12.w),
        Container(
          height: 45.w,
          width: 1.sw,
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            "爱评论的人都是可爱的",
            style: Theme.of(context).tsDesc2,
          ),
        ),
      ],
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
