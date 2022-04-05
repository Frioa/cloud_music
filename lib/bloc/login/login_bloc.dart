import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/network/account/login_client.dart';
import 'package:cloud_music/network/network_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginStateAction, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginStateAction>((action, emit) async {
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
        case LoginAction.requestLoginStatus:
          final response = await NestLoginClient(dio).loginStatus();
          final a = LoginStateAction(
            nestLoginStatusResponse: response.data,
            action: LoginAction.loginStatus,
          );
          emit.call(state.copyWith(nestLoginStatusResponse: a.nestLoginStatusResponse));
          break;
      }
    });
  }
}
