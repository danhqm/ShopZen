import 'package:e_commerce/page/account.dart';
import 'package:e_commerce/page/cart.dart';
import 'package:e_commerce/page/homepage.dart';
import 'package:e_commerce/page/saved.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

  final List<Widget> pages = [
    Home(),
    Saved(),
    Cart(),
    Account(),
  ];

  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          selectedItemColor: Color(0xFF452CE8),
          unselectedItemColor: Color(0xFF938F9C),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                ),
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.check_circle_outline_rounded,
                ),
                icon: Icon(
                  Icons.check_circle_outline_rounded,
                ),
                label: 'Saved'
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart_outlined,
              ),
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_outline_outlined,
              ),
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: 'Account',
            ),
          ]
      ),
    );
  }
}