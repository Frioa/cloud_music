import 'package:cloud_music/bloc/bloc.dart';
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
    mvId = R.of(context).getParameter<int?>(PageKey.mvId);

    if (mvId != null) {
      context.read<MVBloc>().add(MVEvent.requestMVURL(mvId!, onSuccess: onMvUrlSuccess));
    }
    logger.d("mv id: $mvId");
  }

  void onMvUrlSuccess() {
    if (!mounted) return;
    final url = context.read<MVBloc>().state.mvUrlVm?.response?.data.url;
    if (url == null) return;

    AudioPlayerController.instance.play(url);
  }

  Widget _buildSurfaceView() {
    return SizedBox(
      width: 1.sw,
      height: 1.sw / AudioPlayerController.instance.value.aspect,
      child: const SurfaceViewWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MVBloc, MVState>(
      builder: (context, state) {
        return Scaffold(
          body: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSurfaceView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
