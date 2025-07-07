import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: 335,
              child: const Text(
                'Forgot Password',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 335,
              child: const Text(
                'Enter your email for the verification process, we will send you 4 digit code to verify your account',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF57545B),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: 322,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your email',
                      labelStyle: TextStyle(
                        color: Color(0xFFA7A5AF),
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Color(0xFF452CE8),
                          width: 2,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Color(0xFF452CE8),
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  )
                ],
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
                  'Continue',
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
      )
    );
  }
}
