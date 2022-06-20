import 'package:cloud_music/bloc/common/view_model.dart';
import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/network/account/login_client.dart';
import 'package:cloud_music/network/network_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';

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

class LoginNewBloc extends Bloc<LoginEvent, LoginState> {
  LoginNewBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(loginStatus: (_$requestDetail value) {}, login: (_$MVURL value) {});
    });
  }
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login() = _$MVURL;

  const factory LoginEvent.loginStatus(int mvId) = _$requestDetail;
}

@freezed
class LoginNewState with _$LoginNewState {
  const factory LoginNewState({
    ViewModel<DataWrapResponse<MVURLResponse>>? mvUrlVm,
  }) = _LoginNewState;

  factory LoginNewState.initial() => LoginNewState(
        mvUrlVm: ViewModel.initial(),
      );
}
