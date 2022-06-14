import 'package:flutter/material.dart';
import 'package:media/media.dart';

class VideoPlayerWidget extends StatefulWidget {
  final PlayerController controller;
  final double? width;
  final double? height;
  final String pauseIconUrl;
  final Widget progressWidget;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
    this.width,
    this.height,
    required this.pauseIconUrl,
    this.progressWidget = const SizedBox(),
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  bool playing = false;

  Widget buildPauseButton() {
    return InkWell(
      onTap: () async {
        await widget.controller.pauseOrPlay();
        setState(() {});
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / PlayerController.instance.value.aspect,
        child: widget.controller.value.isPlaying || !widget.controller.value.isInitialized
            ? Container()
            : Container(
                color: Colors.black26,
                child: Image.asset(
                  widget.pauseIconUrl,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / PlayerController.instance.value.aspect,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: widget.width,
            height: widget.height,
            child: const SurfaceViewWidget(),
          ),
          buildPauseButton(),
          widget.progressWidget,
        ],
      ),
    );
  }
}
