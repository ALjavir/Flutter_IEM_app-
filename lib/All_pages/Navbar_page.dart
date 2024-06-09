import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/cart_page.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/home_page.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  List<Widget> _pageList = [
    Homepage(),
    Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: Container(
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          mainAxisAlignment: MainAxisAlignment.center,
          //rippleColor: Colors.grey[400],
          color: Colors.grey,
          activeColor: Colors.black,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
            )
          ],
        ),
      ),
    );
  }
}
