import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/bloc/player/player.dart';
import 'package:cloud_music/bloc/user/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_music/common/common.dart';

class BlocWrapper extends StatefulWidget {
  final Widget child;

  const BlocWrapper({required this.child, Key? key}) : super(key: key);

  @override
  _BlocWrapperState createState() => _BlocWrapperState();
}

class _BlocWrapperState extends State<BlocWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (_) => AppBloc()),
        BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
        BlocProvider<UserBloc>(create: (_) => UserBloc()),
        BlocProvider<UserNewBloc>(create: (_) => UserNewBloc()),
        BlocProvider<RecommendBloc>(create: (_) => RecommendBloc()),
        BlocProvider<PlaylistBloc>(create: (_) => PlaylistBloc()),
        BlocProvider<TopBloc>(create: (_) => TopBloc()),
        BlocProvider<PlayerBloc>(create: (_) => PlayerBloc()),
      ],
      child: TranslationProvider(
        child: Builder(
          builder: (context) {
            return PlayersStateWrap(child: widget.child);
          },
        ),
      ),
    );
  }
}
