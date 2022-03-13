import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';
import 'package:cloud_music/common/common.dart';

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
      response = value.data;
      setState(() {});
    });
  }

  void request(String id) {
    SearchClient(dio).songUrl(id).then((value) async {
      PlayerJni.instance.prepare = () {
        PlayerJni.instance.start();
      };
      await PlayerJni.instance.init();
      await PlayerJni.instance.setDataSource(value.data![0].url!);

      setState(() {});
    });
  }

  Widget itemBuilder(BuildContext context, int index) {
    return CupertinoButton(
      child: Text(response!.dailySongs[index].name),
      onPressed: () {
        request(response!.dailySongs[index].id.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.DailySongPage.title)),
      body: response == null
          ? const SizedBox()
          : Stack(
              children: [
                const SizedBox(width: 1, height: 1, child: SurfaceViewWidget()),
                ListView.builder(
                  itemCount: response!.dailySongs.length,
                  itemBuilder: itemBuilder,
                ),
              ],
            ),
    );
  }
}
