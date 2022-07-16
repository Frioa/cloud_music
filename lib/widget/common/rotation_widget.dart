import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RotationWidget extends StatefulWidget {
  final Widget child;
  final bool isStartDefault;
  final int speedMilliseconds;

  const RotationWidget({
    Key? key,
    required this.child,
    this.isStartDefault = true,
    this.speedMilliseconds = 500,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RotationWidgetState();
  }
}

class _RotationWidgetState extends State<RotationWidget> with TickerProviderStateMixin {
  late final AnimationController controller;

  void stop() {
    controller.stop();
  }

  void start() {
    controller.forward();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: widget.speedMilliseconds), vsync: this, );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
        controller.forward();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.isStartDefault) controller.forward();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildRotationTransition();
  }

  //旋转
  Widget buildRotationTransition() {
    return Center(
      child: RotationTransition(
        //设置动画的旋转中心
        alignment: Alignment.center,
        //动画控制器
        turns: controller,
        //将要执行动画的子view
        child: widget.child,
      ),
    );
  }

  @override
  void didUpdateWidget(RotationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isStartDefault) {
      controller.forward();
    } else {
      controller.stop();
    }
  }
}
