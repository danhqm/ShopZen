import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
                  'Enter 4 Digit Code',
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
                    'Enter the 4 digit code that we sent to your email.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF57545B),
                    )
                ),
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: const Color(0xFF512DA8),
                    fieldWidth: 50,
                    borderWidth: 2,
                    borderRadius: BorderRadius.circular(12),
                    showFieldAsBox: true,
                    fillColor: Colors.white,
                    filled: true,
                  )
                ],
              ),
              const SizedBox(height: 48),
              const Text.rich(
                TextSpan(
                  text: "Email not received? ",
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF57545B),
                  ),
                  children: [
                    TextSpan(
                      text: "Resend Code",
                      style: TextStyle(
                        color: Color(0xFF452CE8),
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
