import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:media/media.dart';

class SongListWidget extends StatelessWidget {
  final List<Song> songs;
  final int? trackCount;
  final bool showIcon;

  const SongListWidget({
    Key? key,
    this.songs = const [],
    this.trackCount,
    this.showIcon = false,
  }) : super(key: key);

  void request(String id) {
    SearchClient(dio).songUrl(id).then((value) async {
      PlayerJni.instance.prepare = () {
        PlayerJni.instance.start();
      };
      await PlayerJni.instance.init();
      await PlayerJni.instance.setDataSource(value.data![0].url!);
    });
  }

  Widget buildSheet(BuildContext context, List<Song> songs) {
    Widget _buildImage(String url) {
      return ImageWidget(
        url,
        size: 0.05.sh,
        cacheHeight: 0.05.sh.toInt(),
        cacheWidth: 0.05.sh.toInt(),
      );
    }

    Widget _buildNum(int index) {
      return Container(
        alignment: Alignment.center,
        width: 0.06.sw,
        child: AutoSizeText(
          "${(index + 1)}",
          style: Theme.of(context).tsNavigator,
        ),
      );
    }

    Widget _buildItem(Song track, int index) {
      final _showIcon = showIcon && (track.al?.picUrl != null);

      return InkWell(
        onTap: () {
          request(track.id.toString());
        },
        child: Container(
          padding: EdgeInsets.all(0.02.sw),
          height: 0.075.sh,
          child: Row(
            children: [
              _showIcon ? _buildImage(track.al!.picUrl!) : _buildNum(index),
              SizedBox(width: 0.02.sw),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      track.name,
                      style: Theme.of(context).tsTitle.copyWith(color: Colors.white),
                    ),
                    Text(
                      track.singerAlbumDesc,
                      style: Theme.of(context).tsDesc,
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
        margin: EdgeInsets.all(0.02.sw),
        height: 0.03.sh,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 0.06.sw,
              child: Icon(
                Icons.play_circle_filled,
                color: Theme.of(context).primaryColor,
                size: 24.sm,
              ),
            ),
            SizedBox(width: 0.02.sw),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    S.PlaylistDetailPage.playAll,
                    style: Theme.of(context).tsNavigator.copyWith(color: Colors.white),
                  ),
                  SizedBox(width: 0.02.sw),
                  if (trackCount != null)
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.5.sm),
                      child: Text(
                        '($trackCount)',
                        style: Theme.of(context).tsDesc,
                      ),
                    ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_circle_right,
              size: 20.sm,
            )
          ],
        ),
      );
    }

    Widget _buildSongList() {
      final list = [
        _buildHeader(trackCount),
        SizedBox(height: 0.02.sw),
        ...songs.mapIndexed((i, e) => _buildItem(e, i)).toList(),
      ];

      return Column(children: list);
    }

    return _buildSongList();
  }

  @override
  Widget build(BuildContext context) {
    return buildSheet(context, songs);
  }
}
