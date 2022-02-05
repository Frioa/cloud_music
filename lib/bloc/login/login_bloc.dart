import 'package:cloud_music/bloc/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginStateAction, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginStateAction>((action, emit) {

      switch (action.action) {
        case LoginAction.login:
          emit.call(state.copyWith(nestLoginResponse: action.nestLoginResponse));
          break;
        case LoginAction.loginStatus:
          emit.call(state.copyWith(nestLoginStatusResponse: action.nestLoginStatusResponse));
          break;
        case LoginAction.userDetail:
          emit.call(state.copyWith(nestUserDetailResponse: action.nestUserDetailResponse));
          break;
      }
    });
  }
}
