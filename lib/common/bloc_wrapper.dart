import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/user/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_music/common/common.dart';

class BlocWrapper extends StatelessWidget {
  final Widget child;

  const BlocWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (_) => AppBloc()),
        BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
        BlocProvider<LoginNewBloc>(create: (_) => LoginNewBloc()),
        BlocProvider<UserBloc>(create: (_) => UserBloc()),
        BlocProvider<UserNewBloc>(create: (_) => UserNewBloc()),
        BlocProvider<RecommendBloc>(create: (_) => RecommendBloc()),
        BlocProvider<PlaylistBloc>(create: (_) => PlaylistBloc()),
        BlocProvider<TopBloc>(create: (_) => TopBloc()),
        BlocProvider<PlayerBloc>(create: (_) => PlayerBloc()),
        BlocProvider<MVBloc>(create: (_) => MVBloc()),
        BlocProvider<ArtistBloc>(create: (_) => ArtistBloc()),
      ],
      child: TranslationProvider(
        child: Builder(
          builder: (context) {
            return PlayersStateWrap(child: child);
          },
        ),
      ),
    );
  }
}
