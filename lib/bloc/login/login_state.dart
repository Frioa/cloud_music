import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/account/account.dart';

part 'login_state.g.dart';

enum LoginAction {
  login,
  loginStatus,
  userDetail,
}

@CopyWith()
class LoginState extends Equatable {
  final NestLoginResponse? nestLoginResponse;
  final NestLoginStatusResponse? nestLoginStatusResponse;
  final NestUserDetailResponse? nestUserDetailResponse;

  const LoginState({
    this.nestLoginResponse,
    this.nestLoginStatusResponse,
    this.nestUserDetailResponse,
  });

  factory LoginState.initial() {
    return LoginState(
      nestLoginResponse: NestLoginResponse.fromJson(const {}),
      nestLoginStatusResponse: NestLoginStatusResponse.fromJson(const {}),
      nestUserDetailResponse: NestUserDetailResponse.fromJson(const {}),
    );
  }

  @override
  List<Object?> get props => [
        nestLoginResponse,
        nestLoginStatusResponse,
        nestUserDetailResponse,
      ];
}

@CopyWith()
class LoginStateAction extends LoginState {
  final LoginAction action;

  const LoginStateAction({
    required this.action,
    NestLoginResponse? nestLoginResponse,
    NestLoginStatusResponse? nestLoginStatusResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  }) : super(
          nestLoginStatusResponse: nestLoginStatusResponse,
          nestLoginResponse: nestLoginResponse,
          nestUserDetailResponse: nestUserDetailResponse,
        );
}
