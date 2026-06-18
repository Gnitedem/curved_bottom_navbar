import 'package:curved_navbar/widgets/curved_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../pages/favorite_page.dart';
import '../pages/home_page.dart';
import '../pages/notification_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int currentIndex = 0;

  final pages = const[
    HomePage(),
    SearchPage(),
    ProfilePage(),
    FavoritePage(),
    NotificationPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFFFFFFF),
       extendBody: true,
       body: pages[currentIndex],
        bottomNavigationBar: CurvedBottomNavBar(
          currentIndex: currentIndex,
          onItemTapped: onItemTapped,
        ),  
    );
  }
}