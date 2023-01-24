import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';

class RecommendSheetWidget extends StatelessWidget {
  const RecommendSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendBloc, RecommendState>(
      builder: (context, state) {
        final vm = state.recommendSheetResponse;

        if (!vm.hasData) return const SizedBox();
        final response = vm.response!;

        Widget item(int index) {
          if (index >= response.recommend.length) return const SizedBox();
          final recommend = response.recommend[index];

          return Expanded(
            child: InkWell(
              onTap: () {
                R.of(context).push(Pages.playlistDetail, parameter: {PageKey.songListId: recommend.id});
              },
              child: Container(
                padding: EdgeInsets.all(6.w),
                child: Column(
                  children: [
                    ImageWidget(
                      recommend.picUrl,
                      cacheWidth: 0.33.sw.toInt(),
                      cacheHeight: 0.33.sw.toInt(),
                    ),
                    Text(
                      recommend.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        Widget body(BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    item(0),
                    item(1),
                    item(2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    item(3),
                    item(4),
                    item(5),
                  ],
                ),
              ],
            ),
          );
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            return body(constraints);
          },
        );
      },
    );
  }
}
