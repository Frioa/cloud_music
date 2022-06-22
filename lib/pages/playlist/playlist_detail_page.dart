import 'package:auto_size_text/auto_size_text.dart';
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
    return SizedBox(
      height: 375.w,
      width: 375.w,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Theme.of(context).radius40,
              bottomRight: Theme.of(context).radius40,
            ),
            child: SizedBox(
              width: 375.w,
              height: 375.w,
              child: ImageWidget(playlist.coverImgUrl),
            ),
          ),
          Container(
            width: 375.w,
            height: 375.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Theme.of(context).isLight
                      ? Colors.white.withOpacity(0.33)
                      : Colors.black.withOpacity(0.33),
                  Theme.of(context).isLight
                      ? Colors.white.withOpacity(0.95)
                      : Colors.black.withOpacity(0.95),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Theme.of(context).radius40,
                bottomRight: Theme.of(context).radius40,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 375.w,
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.w),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          playlist.name,
                          style: Theme.of(context).tsDescBold.copyWith(fontSize: 20.sp),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6.w),
                        if (playlist.description != null) ...[
                          Text(
                            playlist.description!,
                            style: Theme.of(context).tsDesc2,
                            maxLines: 2,
                            // overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6.w),
                        ],
                        Row(
                          children: [
                            ClipOval(
                              child: ImageWidget(
                                playlist.creator!.avatarUrl,
                                size: 22.w,
                              ),
                            ),
                            SizedBox(width: 13.w),
                            Text(
                              playlist.creator!.nickname,
                              style: Theme.of(context).tsDesc2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
          // color: Theme.of(context).black1,
          borderRadius: BorderRadius.all(Radius.circular(30.0.sm)),
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

        if (!detailVM.hasData || id == null) return const SizedBox();

        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: 1.sh,
                child: Column(
                  children: [
                    if (trackAllVM.hasData)
                      SongListWidget(
                        songListId: id!,
                        headerWidget: Column(
                          children: [
                            _buildTop(),

                            /// TODO: 收藏、分享、留言
                            // _buildCollection(),
                          ],
                        ),
                        songs: trackAll.songs,
                      ),
                  ],
                ),
              ),
              // TODO: 自定义 AppBar
              // AppBar(
              //   title: Text(S.PlaylistDetailPage.title),
              //   backgroundColor: Colors.transparent,
              // ),
            ],
          ),
        );
      },
    );
  }
}
