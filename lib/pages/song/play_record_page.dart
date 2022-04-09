import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/network/account/user_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';

class PlayRecordPage extends StatefulWidget {
  const PlayRecordPage({Key? key}) : super(key: key);

  @override
  State<PlayRecordPage> createState() => _PlayRecordPageState();
}

class _PlayRecordPageState extends State<PlayRecordPage> {
  NestUserRecordResponse? userRecord;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final id = context.read<LoginBloc>().state.nestLoginStatusResponse?.profile?.userId;
    if (id != null) {
      NestUserClient(dio).userRecord(id).then((value) {
        userRecord = value;
      });
    }
  }

  void request(String id) {
    SearchClient(dio).songUrl(id).then((value) async {
      String? url = value.data?[0].url;
      if (url == null) {
        logger.d("url is null...");
        return;
      }

      PlayerJni.instance.prepare = () {
        PlayerJni.instance.start();
      };
      await PlayerJni.instance.init();
      await PlayerJni.instance.setDataSource(value.data![0].url!);

      setState(() {});
    });
  }

  Widget itemBuilder(BuildContext context, int index) {
    final song = userRecord!.allData![index].song!;

    return CupertinoButton(
      child: Text(song.name ?? ''),
      onPressed: () {
        request(song.id.toString());
      },
    );
  }

  Widget _buildBody() {
    if (userRecord == null) {
      return const SizedBox();
    }

    return Stack(
      children: [
        ListView.builder(
          itemCount: userRecord!.allData!.length,
          itemBuilder: itemBuilder,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.playRecordPage.title)),
      body: _buildBody(),
    );
  }
}
