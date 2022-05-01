import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';
import 'package:media/media.dart';

class MVPage extends StatefulWidget {
  const MVPage({Key? key}) : super(key: key);

  @override
  State<MVPage> createState() => _MVPageState();
}

class _MVPageState extends BasePageState<MVPage> {
  int? mvId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mvId = (R.of(context).currentConfiguration.parameter[PageKey.mvId]) as int?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 1.sw,
              height: 200,
              child: SurfaceViewWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
