import 'package:cloud_music/widget/common/common.dart';
import 'package:flutter/material.dart';
import 'package:cloud_music/common/common.dart';

class DailySongPage extends StatefulWidget {
  const DailySongPage({Key? key}) : super(key: key);

  @override
  DailySongPageState createState() => DailySongPageState();
}

class DailySongPageState extends State<DailySongPage> {
  DailySongResponse? response;

  @override
  void initState() {
    super.initState();

    SearchClient(dio).recommendSongs().then((value) {
      response = value.data;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.DailySongPage.title)),
      body: response == null
          ? const SizedBox()
          : SingleChildScrollView(
              child: SongListWidget(
                songListId: 0, // TODO
                songs: response!.dailySongs,
                showIcon: true,
              ),
            ),
    );
  }
}
