import 'package:flutter/material.dart';

// ignore: camel_case_types
class notificationScreen extends StatelessWidget {
  const notificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.notifications, color: Colors.lightGreen,),
    );
  }
}
