import 'package:cloud_music/bloc/common/view_model.dart';
import 'package:cloud_music/bloc/login/login.dart';
import 'package:cloud_music/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oktoast/oktoast.dart';

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
        // case LoginAction.requestLoginStatus:
        //   final response = await NestLoginClient(dio).loginStatus();
        //   final a = LoginStateAction(
        //     nestLoginStatusResponse: response.data,
        //     action: LoginAction.loginStatus,
        //   );
        //   emit.call(state.copyWith(nestLoginStatusResponse: a.nestLoginStatusResponse));
        //   break;
        case LoginAction.requestLoginStatus:
          // TODO: Handle this case.
          break;
      }
    });
  }
}

class LoginNewBloc extends Bloc<LoginEvent, LoginNewState> {
  LoginNewBloc() : super(LoginNewState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        sendCaptcha: (event) async => sentCaptcha(event, emit),
        cellphone: (event) async => cellphone(event, emit),
        loginStatus: (event) async => loginState(event, emit),
      );
    });
  }

  Future<void> sentCaptcha($sendCaptcha event, Emitter<LoginNewState> emit) async {
    emit.call(state.copyWith(sentCaptchaVm: ViewModel.requesting()));
    await NestLoginClient(dio).sentCaptcha(event.phone).then((response) {
      emit.call(state.copyWith(sentCaptchaVm: ViewModel.response(response)));
      event.onSuccess?.call();
    }).catchError((_) {
      emit.call(state.copyWith(sentCaptchaVm: ViewModel.error(null)));
      showToast('网络异常');
      event.onError?.call();
    });
  }

  Future<void> cellphone($cellphone event, Emitter<LoginNewState> emit) async {
    emit.call(state.copyWith(nestPhoneLoginVm: ViewModel.requesting()));
    await NestLoginClient(dio).cellPhone(event.phone, '', captcha: event.captcha).then(
      (response) async {
        emit.call(state.copyWith(nestPhoneLoginVm: ViewModel.response(response)));
        event.onSuccess?.call();
      },
    ).catchError((_) {
      emit.call(state.copyWith(nestPhoneLoginVm: ViewModel.error(null)));
      showToast('网络异常');
      event.onError?.call();
    });
  }

  Future<void> loginState($loginStatus event, Emitter<LoginNewState> emit) async {
    emit.call(state.copyWith(loginStatusVm: ViewModel.requesting()));
    await NestLoginClient(dio).loginStatus().then(
      (response) async {
        emit.call(state.copyWith(loginStatusVm: ViewModel.response(response)));
        event.onSuccess?.call();
      },
    ).catchError((_) {
      emit.call(state.copyWith(loginStatusVm: ViewModel.error(null)));
      event.onError?.call();
    });
  }
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.sendCaptcha(String phone,
      {VoidCallback? onSuccess, VoidCallback? onError}) = $sendCaptcha;

  const factory LoginEvent.cellphone(String phone, String captcha,
      {VoidCallback? onSuccess, VoidCallback? onError}) = $cellphone;

  const factory LoginEvent.loginStatus({VoidCallback? onSuccess, VoidCallback? onError}) =
      $loginStatus;
}

@freezed
class LoginNewState with _$LoginNewState {
  const factory LoginNewState({
    ViewModel<VerifyNestCaptchaResponse>? sentCaptchaVm,
    ViewModel<NestLoginResponse>? nestPhoneLoginVm,
    ViewModel<DataWrapResponse<NestLoginStatusResponse>>? loginStatusVm,
  }) = _LoginNewState;

  factory LoginNewState.initial() => LoginNewState(
        sentCaptchaVm: ViewModel.initial(),
        nestPhoneLoginVm: ViewModel.initial(),
        loginStatusVm: ViewModel.initial(),
      );
}
