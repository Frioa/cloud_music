import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/model/account/account.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<NestLoginResponse, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<NestLoginResponse>((response, emit) {
      emit.call(state.copyWith(nestLoginResponse: response));
    });
  }
}
