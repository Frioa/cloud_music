import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerListDetailPage extends StatefulWidget {
  const PlayerListDetailPage({Key? key}) : super(key: key);

  @override
  State<PlayerListDetailPage> createState() => _PlayerListDetailPageState();
}

class _PlayerListDetailPageState extends State<PlayerListDetailPage> {
  late final int? id;
  late ViewModel<PlayDetailResponse> vm;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final map = R.of(context).currentConfiguration.parameter;
    id = map[PageKey.songListId] as int?;
    context.read<PlaylistBloc>().add(RequestPlaylistDetailEvent(id!));
  }

  Widget _buildTop() {
    if (!vm.hasData) return const SizedBox();

    final response = vm.response!;
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
              children: [
                Text(
                  playlist.name,
                  style: Theme.of(context).tsTitle.copyWith(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.02.sw),
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
                      Icon(
                        Icons.add,
                        size: 0.065.sw,
                      ),
                    ],
                  ),
                ),
                // TODO: 
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistBloc, PlaylistState>(
      builder: (context, state) {
        vm = state.playlistDetailResponse;

        return Scaffold(
          appBar: AppBar(title: Text(S.SongListPage.title)),
          body: Stack(
            children: [
              _buildTop(),
            ],
          ),
        );
      },
    );
  }
}
