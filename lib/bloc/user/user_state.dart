import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/model/account/account.dart';

part 'user_state.g.dart';

enum UserAction {
  userAccount,
  userDetail,
}

@CopyWith()
class UserState extends Equatable {
  final NestUserAccountResponse? nestUserAccountResponse;
  final NestUserDetailResponse? nestUserDetailResponse;

  const UserState({
    this.nestUserAccountResponse,
    this.nestUserDetailResponse,
  });

  factory UserState.initial() {
    return const UserState(
      nestUserAccountResponse: null,
      nestUserDetailResponse: null,
    );
  }

  @override
  List<Object?> get props => [
        nestUserAccountResponse,
        nestUserDetailResponse,
      ];
}

@CopyWith()
class UserStateAction extends UserState {
  final UserAction action;

  const UserStateAction({
    required this.action,
    NestUserAccountResponse? nestUserAccountResponse,
    NestUserDetailResponse? nestUserDetailResponse,
  }) : super(
          nestUserAccountResponse: nestUserAccountResponse,
          nestUserDetailResponse: nestUserDetailResponse,
        );
}
