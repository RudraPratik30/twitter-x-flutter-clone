import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.home, color: Colors.lightGreen,),
    );
  }
}
