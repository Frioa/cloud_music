import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/translations.g.dart';
import 'package:cloud_music/model/account/user.dart';
import 'package:cloud_music/network/account/user_client.dart';
import 'package:cloud_music/network/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        SizedBox(width: 1, height: 1, child: const SurfaceViewWidget()),
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
