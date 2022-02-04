import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;

  const InputWidget({
    Key? key,
    this.hintText,
    this.controller,
    this.textInputType,
  }) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late final decoration = InputDecoration(hintText: widget.hintText);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      controller: widget.controller,
      keyboardType: widget.textInputType,
    );
  }
}
