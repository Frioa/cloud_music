import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/user/user.dart';
import 'package:cloud_music/network/account/user_client.dart';

import '../../network/network_config.dart';

class UserBloc extends Bloc<UserStateAction, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<UserStateAction>((action, emit) {
      switch (action.action) {
        case UserAction.userAccount:
          emit.call(state.copyWith(nestUserAccountResponse: action.nestUserAccountResponse));
          break;
        case UserAction.userDetail:
          emit.call(state.copyWith(nestUserDetailResponse: action.nestUserDetailResponse));
          break;
      }
    });
  }
}

class UserNewBloc extends Bloc<BaseUserStateEvent, UserNewState> {
  UserNewBloc() : super(UserNewState.initial()) {
    on<BaseUserStateEvent>((action, emit) async {
      if (action is RequestUserSheetEvent) {
        final response = await NestUserClient(dio).playlist(action.userId);

        emit.call(state.copyWith(userSheetVm: ViewModel.response(response)));
      }
    });
  }
}
