import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/views/home_screens/chat_screen.dart';
import 'package:starlive_app/views/home_screens/coin_screen.dart';
import 'package:starlive_app/views/home_screens/explore_screen.dart';
import 'package:starlive_app/views/home_screens/following_screen.dart';
import 'package:starlive_app/views/home_screens/foryou_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _className2 = [
    ForYouScreen(),
    FollowingScreen(),
    ExploreScreen(),
    CoinScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _className2.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(foryou_home, height: 20, width: 20),
              label: "For You"),
          BottomNavigationBarItem(
              icon: Image.asset(following_home, height: 20, width: 20),
              label: "Following"),
          BottomNavigationBarItem(
              icon: Image.asset(explore_home, height: 20, width: 20),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Image.asset(coins_home, height: 20, width: 20),
              label: "Coins"),
          BottomNavigationBarItem(
              icon: Image.asset(chat_home, height: 20, width: 20),
              label: "Chat"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
