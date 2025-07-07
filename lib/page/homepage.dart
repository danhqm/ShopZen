import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController  = PageController();
  late Timer _autoPlayTimer;
  int _currentPage = 0;
  final int _numPages = 3;

  @override
  void initState() {
    super.initState();

    _autoPlayTimer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _numPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _autoPlayTimer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF68656E),
                      ),
                    ),
                    Text(
                      'ShopZen',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Image(
                    image: AssetImage('media/Notification.png'),
                    width: 44,
                    height: 44,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
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
                        hintText: 'Find Your Favourite Product',
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Row(
              children: <Widget>[
                Text(
                    'Categories',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF323135),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                  )
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryBox(icon: Icons.checkroom, label: 'Fashion'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.fitness_center_outlined, label: 'Fitness'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.chair_outlined, label: 'Home'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.computer_outlined, label: 'Electronics'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.attach_money_outlined, label: 'Discount'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.access_time_outlined, label: 'Leaving Soon'),
                  SizedBox(width: 16),
                  CategoryBox(icon: Icons.checkroom, label: 'Fashion'),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Image(
                            image: AssetImage('media/Promo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Image(
                            image: AssetImage('media/Promo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Image(
                            image: AssetImage('media/Promo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFF452CE8),
                    dotColor: Color(0xFFA7A5AF),
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 8,
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 14),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                'Popular Products',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF323135),
                )
              ),
          ),
          Container(
            margin: const EdgeInsets.all(14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // First product card
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Fan.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Portable Neck Fan\nHands Free Fan',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // Second product card (copy or different product)
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Echodot.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Refurbished Echo Dot',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // First product card
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Ringcam.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ring Stick Up\nCam Battery HD',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // Second product card (copy or different product)
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Reddress.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Women\'s Swing Tunic Notch Collar',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(14),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // First product card
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Yogadress.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yoga Dress Pants for Women',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // Second product card (copy or different product)
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              'media/Adidas.png',
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 30,
                            height: 30,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                              child: IconButton(
                                icon: const Icon(Icons.favorite_border),
                                iconSize: 15,
                                onPressed: () {
                                  // Handle favorite button press
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'adidas Women\'s Grand Court',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF323135),
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '\$40',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF452CE8),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '\$60',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 4),
                                Text(
                                  '4.8 (120)',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      )
    );
  }
}

class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryBox({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF000000), // dark brown icon
            size: 28,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF4A2C3E), // match icon color
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
