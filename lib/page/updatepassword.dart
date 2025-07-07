import 'package:flutter/material.dart';

class Updatepassword extends StatefulWidget {
  const Updatepassword({super.key});

  @override
  State<Updatepassword> createState() => _UpdatepasswordState();
}

class _UpdatepasswordState extends State<Updatepassword> {
  bool _obscureText = true;


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
                  'Create New Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 322,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'New Password',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
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
              Container(
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
              const SizedBox(height: 48),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 335,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (context) => const FractionallySizedBox(
                          widthFactor: 1,
                          heightFactor: 0.5,
                          child: SuccessfulPassword(),
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
                    'Update Password',
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
        )
    );
  }
}

class SuccessfulPassword extends StatelessWidget {
  const SuccessfulPassword({super.key});


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
            )
        ),
        const SizedBox(height: 20),
        const Text(
          'Password updated Successfully!',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
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
