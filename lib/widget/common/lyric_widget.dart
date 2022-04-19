import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:media/player_controller.dart';

class LyricWidget extends StatefulWidget {
  const LyricWidget({Key? key}) : super(key: key);

  @override
  State<LyricWidget> createState() => _LyricWidgetState();
}

class _LyricWidgetState extends State<LyricWidget> with TickerProviderStateMixin {
  final ScrollController controller = ScrollController();

  final indexNotifier = ValueNotifier<int>(0);

  int get index => indexNotifier.value;

  List<Lyric> get lyricList => Provider.of<PlayerBloc>(context, listen: false).state.lyricList;

  @override
  void initState() {
    AudioPlayerController.instance.addListener(onLyricsPosition);
    super.initState();
  }

  @override
  void dispose() {
    AudioPlayerController.instance.removeListener(onLyricsPosition);
    controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void quickScroller() {
    controller.animateTo(
      lyricList[index].height,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void scroller() {
    final diff = index + 1 < lyricList.length
        ? (lyricList[index + 1].time - lyricList[index].time)
        : const Duration(milliseconds: 800);

    controller.animateTo(
      lyricList[index].height,
      duration: lyricList[index].content.isEmpty ? const Duration(milliseconds: 200) : diff,
      curve: Curves.ease,
    );
  }

  void onLyricsPosition() {
    if (!mounted) return;

    final position = AudioPlayerController.instance.value.position;
    final oldValue = index;
    indexNotifier.value = findLyricIndex(position);

    if (oldValue == index) return;
    if (index - oldValue > 1) return quickScroller();

    scroller();
  }

  List<Widget> get widgets {
    final lyricList = Provider.of<PlayerBloc>(context, listen: false).state.lyricList;
    final ans = <Widget>[];

    for (int i = 0; i < lyricList.length; i++) {
      ans.add(_buildText(lyricList[i], i));
    }

    return ans;
  }

  ///
  /// 二分查找歌词数组下标
  ///
  int findLyricIndex(Duration position) {
    final lyricList = Provider.of<PlayerBloc>(context, listen: false).state.lyricList;
    var left = 0;
    var right = lyricList.length - 1;

    while (left < right) {
      final mid = (left + right + 1) ~/ 2;
      final curTime = lyricList[mid].time;
      if (curTime >= position) {
        right = mid - 1;
      } else {
        left = mid;
      }
    }
    return left;
  }

  Widget _buildText(Lyric lyric, int index) {
    if (lyric.content.isEmpty) return const SizedBox();

    return SizedBox(
      key: ValueKey('${lyric.hashCode}${indexNotifier.value == index}'),
      height: Lyric.itemHeight,
      child: AutoSizeText(
        lyric.content,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: indexNotifier.value == index
            ? Theme.of(context).tsDesc.copyWith(fontSize: 16.sp)
            : Theme.of(context).tsDesc2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (context, value, child) {
            return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              width: 1.sw,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: controller,
                    child: SizedBox(
                      width: 1.sw,
                      child: Column(
                        children: [
                          SizedBox(height: constraints.maxHeight / 2),
                          ...widgets,
                          SizedBox(height: constraints.maxHeight / 2),
                        ],
                      ),
                    ),
                  ),
                  // TODO: 暂时隐藏辅助线
                  // Positioned(
                  //   top: constraints.maxHeight / 2,
                  //   child: Container(
                  //     color: Colors.blue,
                  //     height: 1.w,
                  //     width: 1.sw,
                  //   ),
                  // ),
                ],
              ),
            );
          });
    });
  }
}
