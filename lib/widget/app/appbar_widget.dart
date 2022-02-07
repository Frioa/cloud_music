import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  final Widget? leading;
  final Widget? title;
  final Color? backgroundColor;

  AppBarWidget({
    Key? key,
    this.leading,
    this.title,
    this.backgroundColor,
  }) : super(
          key: key,
          leading: leading,
          title: title,
          backgroundColor: backgroundColor,
        );

 
}


