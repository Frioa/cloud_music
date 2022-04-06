import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_music/bloc/top/top.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopArtistsWidget extends StatefulWidget {
  const TopArtistsWidget({Key? key}) : super(key: key);

  @override
  State<TopArtistsWidget> createState() => _TopArtistsState();
}

class _TopArtistsState extends State<TopArtistsWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<TopBloc>().add(RequestTopArtistsEvent());
  }

  Widget _buildCard(int index) {
    /// TODO: 歌手列表页
    final response = context.read<TopBloc>().state.topArtistsVm.response;
    final name = response?.artists[index].name ?? '';
    final img = response?.artists[index].img1v1Url ?? '';

    return Container(
      height: 65.w,
      width: 179.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        color: index % 2 == 0
            ? const Color(0xff9570FF).withOpacity(0.1)
            : const Color(0xff6FCF97).withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: ImageWidget(img.isEmpty ? Assets.icDefaultAvatar.path : img, size: 37.w),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 110.w,
                child: AutoSizeText(
                  name,
                  style: Theme.of(context).tsTitleBold2,
                  maxLines: 1,
                ),
              ),
              SizedBox(width: 2.w),
              Text('Some Feeling', style: Theme.of(context).tsDesc),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBloc, TopState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.only(left: 0.w, right: 0.w, top: 24.w),
        child: SizedBox(
          height: 65.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.topArtistsVm.hasData ? state.topArtistsVm.response!.artists.length : 3,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(width: 23.w),
                  _buildCard(index),
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
