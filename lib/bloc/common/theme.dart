import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// {@template brightness_cubit}
/// A simple [Cubit] that manages the [ThemeData] as its state.
/// {@endtemplate}
class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(lightTheme);

  static final lightTheme = ThemeData(
    primaryColor: const Color(0xFF9570FF),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    dividerColor: Colors.black.withOpacity(0.1),
    cardColor: Colors.white,
    brightness: Brightness.light,
    unselectedWidgetColor: const Color(0xff303134),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0,
      toolbarHeight: 52.w,
      centerTitle: true,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xffF0F0F0),
      suffixIconColor: Color(0xFF9570FF),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF4d6ea8),
    ),

  );

  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFF902b2b),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: const Color(0xFF111215),
    dividerColor: Colors.white.withOpacity(0.05),
    brightness: Brightness.dark,
    cardColor: const Color(0xffadaeb3),
    unselectedWidgetColor: const Color(0xffCCCCCC),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF111215),
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 52.w,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF4d6ea8),
    ),
  );
}
