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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFFFFFFF),
       
    );
  }
}