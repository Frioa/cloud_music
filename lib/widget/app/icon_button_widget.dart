import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData data;
  final VoidCallback? onPressed;

  const IconButtonWidget({
    Key? key,
    required this.data,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        data,
        size: 26.w,
      ),
      color: Theme.of(context).primaryTextColor,
      onPressed: () {
        onPressed?.call();
      },
    );
  }
}
