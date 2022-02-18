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
        title: Text('find'),
      ),
      body: Column(
        children: [
          CupertinoButton(
            child: Text('每日歌曲'),
            onPressed: () {
              print('object');
              R.of(context).push(Routes.dailysongConfig);
            },
          ),
        ],
      ),
    );
  }
}
