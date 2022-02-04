import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/account/account.dart';

part 'login_state.g.dart';

@CopyWith()
class LoginState extends Equatable {
  final NestLoginResponse nestLoginResponse;

  const LoginState({
    required this.nestLoginResponse,
  });

  factory LoginState.initial() {
    return LoginState(
      nestLoginResponse: NestLoginResponse.fromJson(const {}),
    );
  }

  @override
  List<Object?> get props => [
        nestLoginResponse,
      ];
}
