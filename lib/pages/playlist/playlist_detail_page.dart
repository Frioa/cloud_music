import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';

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
                  playlist.description ?? 'null',
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
                    if (trackAllVM.hasData)
                      SongListWidget(
                        songs: trackAll.songs,
                        trackCount: playlist.trackCount,
                      ),
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
