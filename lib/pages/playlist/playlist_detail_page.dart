import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class PlayerListDetailPage extends StatefulWidget {
  const PlayerListDetailPage({Key? key}) : super(key: key);

  @override
  State<PlayerListDetailPage> createState() => _PlayerListDetailPageState();
}

class _PlayerListDetailPageState extends State<PlayerListDetailPage> {
  late final int? id;

  late PlaylistState state;
  late ViewModel<PlayDetailResponse> detailVM;
  late ViewModel<TrackAllResponse> trackAllVM;

  PlayDetailResponse get detail => detailVM.response!;

  TrackAllResponse get trackAll => trackAllVM.response!;

  PlayerList get playlist => detailVM.response!.playlist!;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final map = R.of(context).currentConfiguration.parameter;
    id = map[PageKey.songListId] as int?;
    context.read<PlaylistBloc>().add(RequestPlaylistDetailEvent(id!));
    context.read<PlaylistBloc>().add(RequestTrackAllEvent(id!));
  }

  Widget _buildTop() {
    final response = detailVM.response!;
    final playlist = response.playlist!;
    return Container(
      height: 0.18.sh,
      padding: EdgeInsets.all(0.042.sw),
      child: Row(
        children: [
          ImageWidget(
            playlist.coverImgUrl,
            size: 0.3.sw,
          ),
          SizedBox(width: 0.03.sw),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.name,
                  style: Theme.of(context).tsTitle.copyWith(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0.04.sw),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageWidget(
                        playlist.creator!.avatarUrl,
                        size: 0.065.sw,
                      ),
                      SizedBox(width: 0.02.sw),
                      Text(
                        playlist.creator!.nickname,
                        style: Theme.of(context).tsDesc,
                      ),
                      SizedBox(width: 0.02.sw),
                      Icon(Icons.add, size: 0.065.sw),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  playlist.description,
                  style: Theme.of(context).tsDesc,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollection() {
    Widget _buildButton(IconData icon, String desc) {
      return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.sm,
            ),
            SizedBox(width: 0.01.sw),
            Text(desc),
          ],
        ),
      );
    }

    final subscribed = playlist.subscribedCount.tenThousandDesc;
    final comment = playlist.commentCount.tenThousandDesc;
    final share = playlist.shareCount.tenThousandDesc;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.04.sw),
      child: Container(
        height: 0.053.sh,
        margin: EdgeInsets.symmetric(horizontal: 0.128.sw),
        decoration: BoxDecoration(
          color: Theme.of(context).black1,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0.sm),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(Icons.add_circle_outline_rounded, subscribed),
            _buildButton(Icons.message, comment),
            _buildButton(Icons.share, share),
          ],
        ),
      ),
    );
  }

  Widget _buildSheet() {
    if (!trackAllVM.hasData) return const SizedBox();

    Widget _buildItem(PlayerListTrack track, int index) {
      return Container(
        padding: EdgeInsets.all(0.02.sw),
        height: 0.075.sh,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 0.06.sw,
              child: AutoSizeText(
                "${(index + 1)}",
                style: Theme.of(context).tsNavigator,
                maxLines: 1,
                minFontSize: 1,
                maxFontSize: 15.sp,
              ),
            ),
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
      );
    }

    Widget _buildHeader() {
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.5.sm),
                    child: Text(
                      '(${playlist.trackCount})',
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
        _buildHeader(),
        SizedBox(height: 0.02.sw),
        ...trackAll.songs.mapIndexed((i, e) => _buildItem(e, i)).toList(),
      ];

      return Column(children: list);
    }

    return _buildSongList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistBloc, PlaylistState>(
      builder: (context, state) {
        this.state = state;
        detailVM = state.playlistDetailResponse;
        trackAllVM = state.trackAllResponse;

        if (!detailVM.hasData) return const SizedBox();

        return Scaffold(
          appBar: AppBar(title: Text(S.PlaylistDetailPage.title)),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    _buildTop(),
                    _buildCollection(),
                    _buildSheet(),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
