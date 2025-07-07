import 'package:flutter/material.dart';

class Logindefault extends StatefulWidget {
  const Logindefault({super.key});

  @override
  State<Logindefault> createState() => _LogindefaultState();
}

class _LogindefaultState extends State<Logindefault> {
  bool _obscureText = true;

  final email = TextEditingController();
  final password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: 322,
              height: 32,
              child: const Text(
                'Login to Email',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
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
                          controller: email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
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
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: 322,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            labelStyle: const TextStyle(
                              color: Color(0xFFA7A5AF),
                              fontFamily: 'Satoshi',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Color(0xFF452CE8),
                                width: 2,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Color(0xFF452CE8),
                                width: 2,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Logindefault()),
                                );
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF323135),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              width: 335,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 0.5,
                        child: SuccessfulLogin(
                          email: email.text,
                          password: password.text,
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF452CE8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login',
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

class SuccessfulLogin extends StatelessWidget {
  final String email;
  final String password;

  const SuccessfulLogin({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Image.asset(
            'media/Checkmark.png',
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Login Successful!',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Email: $email',
          style: const TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
          width: 335,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF452CE8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Done',
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
    );
  }
}
