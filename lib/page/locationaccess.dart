import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'media/Locationlogo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 24),
            const Text(
              'What Is Your Location',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'We need to know your location in order to suggest nearby services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF68656E)
              ),
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: 335,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF452CE8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Allow Location Access',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
