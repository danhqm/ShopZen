// lib/Page/splash.dart
import 'package:flutter/material.dart';
import 'dart:async'; // Required for Future.delayed
import 'package:e_commerce/page/onboarding.dart'; // Import your Register screen

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToRegister();
  }

  _navigateToRegister() async {
    // Wait for a duration (e.g., 3 seconds)
    await Future.delayed(const Duration(seconds: 3), () {});
    // Then navigate to the Register screen, replacing the splash screen
    // so the user can't go back to it.
    if (mounted) { // Check if the widget is still in the tree
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboarding()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF452CE8),
      body: Center(
        child: Image(
          image: AssetImage('media/Logo.png'),
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}