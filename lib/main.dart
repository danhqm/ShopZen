import 'package:e_commerce/page/bottomnav.dart';
import 'package:e_commerce/page/homepage.dart';
import 'package:e_commerce/page/notifications.dart';
import 'package:e_commerce/page/splash.dart';
import 'package:flutter/material.dart';


void main() async {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}