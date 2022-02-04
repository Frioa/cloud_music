import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/model/account/account.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'app_state.g.dart';

@CopyWith()
class AppState extends Equatable {
  final ThemeData theme;
  final NestLoginResponse nestLoginResponse;

  const AppState({
    required this.theme,
    required this.nestLoginResponse,
  });

  factory AppState.initial() {
    return AppState(
      theme: ThemeCubit.lightTheme,
      nestLoginResponse: NestLoginResponse.fromJson(const {}),
    );
  }

  @override
  List<Object?> get props => [
        theme,
        nestLoginResponse,
      ];
}
