import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template brightness_cubit}
/// A simple [Cubit] that manages the [ThemeData] as its state.
/// {@endtemplate}
class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(lightTheme);

  static final lightTheme = ThemeData(
    primaryColor: const Color(0xFFCE3D3A),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFFF2F4F5),
    dividerColor: Colors.black.withOpacity(0.1),
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFF902b2b),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: const Color(0xFF111215),
    dividerColor: Colors.white.withOpacity(0.05),
    brightness: Brightness.dark,
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? lightTheme : darkTheme);
  }
}
