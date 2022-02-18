//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
//nameという変数に文字列を入れるイニシャライザ
  NextPage(this.name);
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monster Energy'),
      ),
      body: Container(
        color: Colors.red,
        child: Text(name),
      ),
    );
  }
}
