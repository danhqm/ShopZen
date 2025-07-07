import 'package:flutter/material.dart';

class Signupdefault extends StatefulWidget {
  const Signupdefault({super.key});

  @override
  State<Signupdefault> createState() => _SignupdefaultState();
}

class _SignupdefaultState extends State<Signupdefault> {
  bool _obscureText = true;

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

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
                'Signup to Email',
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
              child: Container(
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
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        } else {
                          return null;
                        }
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
            ),
            Form(
              key: formKey,
              child: Container(
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
                        if (value!.isEmpty) {
                          return 'Password is required';
                        } else {
                          return null;
                        }
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
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
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
                  ],
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                width: 322,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: confirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required';
                        } else {
                          return null;
                        }
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
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
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
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              width: 335,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
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
                      child: SuccessfulSignup(
                        email: email.text,
                        password: password.text,
                      ),
                    )
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
                    color: Color(0xFFFFFFFF),
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


class SuccessfulSignup extends StatelessWidget {
  final String email;
  final String password;

  const SuccessfulSignup({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    // You can now use `email` and `password` here
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
        Text(
          'Signup Successful!\nEmail: $email',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
          width: 335,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Just an example
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
