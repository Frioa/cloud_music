import 'package:cloud_music/bloc/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
