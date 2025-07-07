import 'package:flutter/material.dart';
import 'bottomnav.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Bottomnav()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF323135),
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Image(
                      image: AssetImage('media/Notification.png'),
                      width: 41,
                      height: 41,
                      fit: BoxFit.fitHeight,
                    )
                  ]
                ),
              ),
          ]
        ),
      ),
    );
  }
}