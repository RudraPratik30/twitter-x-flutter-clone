import 'package:flutter/material.dart';
import 'package:x_clone/x_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "X",
      theme: ThemeData(

      ),
      home: const XHome(),
    );
  }
}