import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';

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

abstract class BaseUserStateEvent {}

class UserSheetEvent extends BaseUserStateEvent {
  final UserSheetResponse response;

  UserSheetEvent(this.response);
}

class RequestUserSheetEvent extends BaseUserStateEvent {
  final int userId;

  RequestUserSheetEvent(this.userId);
}

@CopyWith()
class UserNewState extends Equatable {
  final ViewModel<UserSheetResponse> userSheetVm;

  const UserNewState({
    required this.userSheetVm,
  });

  factory UserNewState.initial() {
    return UserNewState(
      userSheetVm: ViewModel.initial(),
    );
  }

  @override
  List<Object?> get props => [
        userSheetVm,
      ];
}
