import 'package:cloud_music/model/recommend/recommend.dart';
import 'package:cloud_music/network/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailySongPage extends StatefulWidget {
  const DailySongPage({Key? key}) : super(key: key);

  @override
  _DailySongPageState createState() => _DailySongPageState();
}

class _DailySongPageState extends State<DailySongPage> {
  DailySongResponse? response;

  @override
  void initState() {
    super.initState();

    SearchClient(dio).recommendSongs().then((value) {
      print('object $value');
      response = value.data;
      setState(() {});
    });
  }

  Widget itemBuilder(BuildContext context, int index) {
    return CupertinoButton(
      child: Text(response!.dailySongs[index].name),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('每日歌曲')),
      body: response == null
          ? const SizedBox()
          : ListView.builder(
              itemCount: response!.dailySongs.length,
              itemBuilder: itemBuilder,
            ),
    );
  }
}
