import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CurvedBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: currentIndex == 0 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: currentIndex == 1 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: currentIndex == 2 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.notifications,
          size: 30,
          color: currentIndex == 3 ? Colors.white : Colors.black,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: currentIndex == 4 ? Colors.white : Colors.black,
        )
      ],
      onTap: onTap,
      backgroundColor: Colors.transparent,
      color: const Color(0XFF4274D9),
      buttonBackgroundColor: const Color(0XFF4274D9),
      height: 75,
      index: currentIndex,
    );
  }
}