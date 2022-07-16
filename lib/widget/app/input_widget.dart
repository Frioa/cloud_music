import 'package:flutter/material.dart';
import 'package:cloud_music/utils/extension/extionsions.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final TextStyle? style;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  const InputWidget({
    Key? key,
    this.hintText,
    this.controller,
    this.textInputType,
    this.focusNode,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.style,
    this.maxLength,
    this.inputFormatters,
  }) : super(key: key);

  @override
  InputWidgetState createState() => InputWidgetState();
}

class InputWidgetState extends State<InputWidget> {
  InputDecoration get decoration => InputDecoration(
        fillColor: Colors.transparent,
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: L.blackAuto3, width: 1.w),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: L.blackAuto3, width: 1.w),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).tsDesc.copyWith(
              fontSize: 20.w,
              color: Colors.black.withOpacity(0.25),
            ),
        prefix: widget.prefix,
        prefixIcon: widget.prefixIcon,
        suffix: widget.suffix,
        suffixIcon: widget.suffixIcon,
        suffixIconColor: Theme.of(context).primaryColor,
      ).applyDefaults(Theme.of(context).inputDecorationTheme);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.w,
      child: TextFormField(
        maxLength: widget.maxLength,
        focusNode: widget.focusNode,
        decoration: decoration,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        style: widget.style,
        cursorHeight: 20.w,
        cursorWidth: 2.w,
        textAlignVertical: TextAlignVertical.center,
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}
