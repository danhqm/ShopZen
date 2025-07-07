import 'package:flutter/material.dart';

class Locationsearch extends StatelessWidget {
  const Locationsearch({super.key});

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
                child: const Text(
                  'Enter Your Location',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 380,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF452CE8),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF452CE8)),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Location',
                          hintStyle: TextStyle(
                            color: Color(0xFFA7A5AF),
                            fontFamily: 'Satoshi',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.close, color: Color(0xFF452CE8)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const ListTile(
                leading: Icon(Icons.navigation, color: Color(0xFF452CE8)),
                title: Text('Use my current location'),
              ),
              const Divider(),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recent Searches',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF452CE8),
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