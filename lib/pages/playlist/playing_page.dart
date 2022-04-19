import 'package:auto_size_text/auto_size_text.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:cloud_music/bloc/player/player_bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:media/model/player_value.dart';
import 'package:media/player_controller.dart';

class PlayingPage extends StatefulWidget {
  const PlayingPage({Key? key}) : super(key: key);

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends BasePageState<PlayingPage> {
  bool showLyric = false;

  Widget _banner(BuildContext context, int index, Song? song) {
    final image = context.watch<PlayerBloc>().state.avatar;

    // Theme
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Theme.of(context).radius20),
            child: ImageWidget(
              image,
              size: 260.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 48.w),
          AutoSizeText(song?.name ?? '', style: Theme.of(context).tsTitleBold, maxLines: 1),
          SizedBox(height: 7.w),
          AutoSizeText(
            song?.singerAlbumDesc ?? '',
            style: Theme.of(context).hint2,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return ValueListenableBuilder<PlayerValue>(
      valueListenable: AudioPlayerController.instance,
      builder: (context, value, child) {
        return SizedBox(
          width: 1.sw,
          child: LinearProgressIndicator(
            minHeight: 3.w,
            value: AudioPlayerController.instance.progress,
            backgroundColor:
                Theme.of(context).isLight ? const Color(0xffF2F2F2) : Colors.black.withOpacity(0.4),
            color: Theme.of(context).primaryColor,
          ),
        );
      },
    );
  }

  Widget _buildLyric() {
    if (!showLyric) return const SizedBox();

    return const LyricWidget();
  }

  Widget _buildBody(Song? song) {
    return InkWell(
      onTap: () => setState(() => showLyric = !showLyric),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.w),
            child: BannerCarousel.fullScreen(
              initialPage: 1,
              height: 999.w,
              animation: false,
              customizedIndicators: const IndicatorModel(width: 0, height: 0, spaceBetween: 0),
              customizedBanners: [
                _banner(context, 0, song),
                _banner(context, 1, song),
                _banner(context, 2, song),
              ],
            ),
          ),
          _buildLyric(),
        ],
      ),
    );
  }

  Widget _buildPlayer() {
    return RepaintBoundary(
      child: Column(
        children: [
          SizedBox(height: 56.w),
          _buildIndicator(),
          const PlayerWidget(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final playerState = context.watch<PlayerBloc>().state;
    final song = playerState.playingSong;

    return Scaffold(
      appBar: AppBarWidget.build(
        title: Text(
          S.playingPage.title,
          style: Theme.of(context).tsAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 10.w),
        child: Column(
          children: [
            Expanded(child: _buildBody(song)),
            _buildPlayer(),
          ],
        ),
      ),
    );
  }
}
