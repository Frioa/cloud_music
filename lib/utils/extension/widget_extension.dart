import 'package:flutter/material.dart';

extension StatelessWidgetExtension on StatelessWidget {
  ThemeData L(BuildContext context) => Theme.of(context);
}

extension StatefulWidgetExtension on State {
  ThemeData get L => Theme.of(context);
}
