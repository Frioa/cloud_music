import 'package:cloud_music/bloc/app/app.dart';
import 'package:cloud_music/bloc/common/common.dart';
import 'package:cloud_music/utils/logger_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum AppEvent {
  lightTheme,
  darkTheme,
  autoTheme,
}

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>((event, emit) {
      logger.d('AppBloc event:$event');
      final AppState newState;

      switch (event) {
        case AppEvent.lightTheme:
          newState = state.copyWith(theme: ThemeCubit.lightTheme);
          break;
        case AppEvent.darkTheme:
          newState = state.copyWith(theme: ThemeCubit.darkTheme);
          break;
        case AppEvent.autoTheme:
          final theme = state.theme.brightness == Brightness.dark
              ? ThemeCubit.lightTheme
              : ThemeCubit.darkTheme;
          newState = state.copyWith(theme: theme);
          break;
      }

      emit.call(newState);
    });
  }
}
