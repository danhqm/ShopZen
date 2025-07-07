import 'package:e_commerce/page/logindefault.dart';
import 'package:e_commerce/page/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: 342,
              height: 43,
              child: const Text(
                'Login to ShopZen',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: 335,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(

                  backgroundColor: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: Image.asset(
                  'media/Google.png',
                  width: 22,
                  height: 22,
                  fit: BoxFit.fitHeight,
                ),
                label: const Text(
                  'Login with Google',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              width: 335,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: Image.asset(
                  'media/Apple.png',
                  width: 22,
                  height: 22,
                  fit: BoxFit.fitHeight,
                ),
                label: const Text(
                  'Login with Apple',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              width: 335,
              height: 50,
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Color(0xFFCECDD4),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCECDD4),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFCECDD4),
                      thickness: 1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              width: 335,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Logindefault()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF452CE8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login with Email',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 280),
              width: 335,
              height: 50,
              child: const Text(
                  'Don\'t have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF68656E),
                  )
              ),
            ),
            SizedBox(
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
                  'Signup',
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