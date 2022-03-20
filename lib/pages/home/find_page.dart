import 'package:breakpad/breakpad.dart';
import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/router/routes.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  _FundPageState createState() => _FundPageState();
}

class _FundPageState extends State<FindPage> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<RecommendBloc>().add(RequestRecommendSheetEvent());
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      appBar: AppBar(
        title: const Text('find'),
      ),
      body: Column(
        children: [
          CupertinoButton(
            child: const Text('每日歌曲'),
            onPressed: () {
              R.of(context).push(Pages.dailySong);
            },
          ),
          CupertinoButton(
            child: const Text('播放记录'),
            onPressed: () {
              R.of(context).push(Pages.playRecord);
            },
          ),
          CupertinoButton(
            child: const Text('crash'),
            onPressed: () async {
              await Breakpad.initBreakPad();
              await Breakpad.crash();
            },
          ),
          const RecommendSheetWidget(),
        ],
      ),
    );
  }
}
