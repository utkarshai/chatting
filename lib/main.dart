import 'package:flutter/material.dart';

import 'package:try_4/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Chat App", home: new HomePage());
  }
}