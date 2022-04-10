import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final Widget? suffixIcon;

  const InputWidget({
    Key? key,
    this.hintText,
    this.controller,
    this.textInputType,
    this.focusNode,
    this.suffixIcon,
  }) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  InputDecoration get decoration => InputDecoration(
        fillColor: const Color(0xffF0F0F0),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0)),
          borderRadius: BorderRadius.all(Radius.circular(14.w)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(14.w)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).tsDesc.copyWith(
              fontSize: 20.w,
              color: Colors.black.withOpacity(0.25),
            ),
        suffixIcon: widget.suffixIcon,
        suffixIconColor: Theme.of(context).primaryColor,
      ).applyDefaults(Theme.of(context).inputDecorationTheme);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.w,
      child: TextFormField(
        focusNode: widget.focusNode,
        decoration: decoration,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        cursorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
