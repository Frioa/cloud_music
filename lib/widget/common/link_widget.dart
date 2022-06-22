import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final TextStyle? style;
  final EdgeInsets? padding;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const LinkWidget(
    this.text, {
    Key? key,
    this.onTap,
    this.style,
    this.padding,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = style?.color ?? Colors.blueAccent;
    final padding = this.padding ??
        EdgeInsets.symmetric(
          vertical: 4.w,
          horizontal: 8.w,
        );
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Text(
          text ?? '',
          style: style ?? Theme.of(context).tsDesc.copyWith(color: color),
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
        ),
      ),
    );
  }
}
