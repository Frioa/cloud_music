import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/utils/player_utils.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SongListWidget extends StatelessWidget {
  final List<Song> songs;
  final Widget headerWidget;
  final int? trackCount;
  final bool showIcon;

  const SongListWidget({
    Key? key,
    this.songs = const [],
    this.trackCount,
    this.showIcon = false,
    this.headerWidget = const SizedBox(),
  }) : super(key: key);


  Widget buildSheet(BuildContext context, List<Song> songs) {
    Widget _buildImage(String url) {
      return ImageWidget(
        url,
        size: 32.w,
        cacheHeight: 32.w.toInt(),
        cacheWidth: 32.w.toInt(),
      );
    }

    Widget _buildNum(int index) {
      return Container(
        alignment: Alignment.center,
        // padding: ,
        width: 24.w,
        child: AutoSizeText(
          "${(index + 1)}",
          style: Theme.of(context).tsNavigator,
          maxLines: 1,
        ),
      );
    }

    Widget _buildItem(Song track, int index) {
      final _showIcon = showIcon && (track.al?.picUrl != null);

      return InkWell(
        onTap: () {
          PlayerManager.play(context, track);
        },
        child: Container(
          padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 15.w, bottom: 15.w),
          height: 68.w,
          child: Row(
            children: [
              _showIcon ? _buildImage(track.al!.picUrl!) : _buildNum(index),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      track.name,
                      style: Theme.of(context).tsDescBold,
                      maxLines: 1,
                    ),
                    SizedBox(height: 4.w),
                    Text(
                      track.singerAlbumDesc,
                      style: Theme.of(context).hint2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.more_vert,
                size: 20.sm,
              )
            ],
          ),
        ),
      );
    }

    Widget _buildHeader(int? trackCount) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 26.w, vertical: 15.w),
        child: Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    S.PlaylistDetailPage.playAll,
                    style: Theme.of(context).hint2,
                  ),
                  SizedBox(width: 0.02.sw),
                ],
              ),
            ),
            if (trackCount != null)
              Padding(
                padding: EdgeInsets.only(bottom: 1.5.sm),
                child: Text(
                  S.PlaylistDetailPage.songNum(count: trackCount),
                  style: Theme.of(context).hint2,
                ),
              ),
          ],
        ),
      );
    }

    Widget _buildSongList() {
      final list = [
        Expanded(
          child: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Column(
                  children: [
                    headerWidget,
                    _buildHeader(trackCount),
                    _buildItem(songs[index], index),
                  ],
                );
              }

              return _buildItem(songs[index], index);
            },
          ),
        ),
      ];

      return Expanded(child: Column(children: list));
    }

    return _buildSongList();
  }

  @override
  Widget build(BuildContext context) {
    return buildSheet(context, songs);
  }
}
