import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final EdgeInsets? padding;

  const ScaffoldWidget({
    Key? key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 12.w),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
