import 'package:cloud_music/route/routes.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  _FundPageState createState() => _FundPageState();
}

class _FundPageState extends State<FindPage> {
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
        ],
      ),
    );
  }
}
