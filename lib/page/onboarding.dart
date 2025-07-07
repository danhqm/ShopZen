import 'package:flutter/material.dart';
import 'signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'media/Onboarding.png',
              width: 362,
              height: 359,
              fit: BoxFit.contain,
            ),
            Container(
              margin: const EdgeInsets.only(top: 48),
              width: 342,
              height: 43,
              child: const Text(
                'Welcome to ShopZen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: 335,
              height: 50,
              child: const Text(
                'Your one-stop destination for hassle-free online shopping',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7E848D),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 52),
              width: 335,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF452CE8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
