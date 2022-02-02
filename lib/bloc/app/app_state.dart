import 'package:cloud_music/bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'app_state.g.dart';

@CopyWith()
class AppState extends Equatable {
  final ThemeData theme;

  const AppState({
    required this.theme,
  });

  factory AppState.initial() {
    return AppState(
      theme: ThemeCubit.lightTheme,
    );
  }

  @override
  List<Object?> get props => [
        theme,
      ];
}
