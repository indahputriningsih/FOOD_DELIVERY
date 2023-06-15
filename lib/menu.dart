import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/compassPage.dart';
import 'package:food_delivery/pages/homePage.dart';
import 'package:food_delivery/pages/orderPage.dart';
import 'package:food_delivery/pages/userPage.dart';

enum _SelectedTab { home, compass, order, user }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: const [
            LoginPage1(),
            compassPage(),
            orderPage(),
            userPage(),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: const Color(0xffEF9F27),
        backgroundColor: const Color(0xffF5F6FA),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "assets/images/homewarna.png"
                  : "assets/images/home.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.compass
                  ? "assets/images/kompaswarna.png"
                  : "assets/images/kompas.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.order
                  ? "assets/images/orderwarna.png"
                  : "assets/images/order.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.user
                  ? "assets/images/userwarna.png"
                  : "assets/images/user.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
