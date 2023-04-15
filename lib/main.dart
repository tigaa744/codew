import 'package:flutter/material.dart';
import 'package:code/mdm.dart';
import 'package:code/d.dart';
void main() {
  runApp(First());
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}
