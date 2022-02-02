import 'package:cloud_music/bloc/bloc.dart';
import 'package:flutter/material.dart';

class BlocWrapper extends StatefulWidget {
  final Widget child;

  const BlocWrapper({required this.child, Key? key}) : super(key: key);

  @override
  _BlocWrapperState createState() => _BlocWrapperState();
}

class _BlocWrapperState extends State<BlocWrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (_) => AppBloc()),
      ],
      child: widget.child,
    );
  }
}
