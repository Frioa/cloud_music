import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  _FundPageState createState() => _FundPageState();
}

class _FundPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      appBar: AppBar(
        title: Text('find'),
      ),
      body: Container(
        child: Text('find page'),
      ),
    );
  }
}
