import 'package:flutter/material.dart';

class CurvedBottomNavBar extends StatelessWidget {

  final int currentIndex;
  final Function(int) onItemTapped;

  const CurvedBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped
  });

  @override
  Widget build(BuildContext context) {

    final icons = [
      Icons.home,
      Icons.search,
      Icons.favorite,
      Icons.person,
      Icons.notifications
    ];

    final labels = [
      'Home',
      'Search',
      'Favorite',
      'Profile',
      'Notification'
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF792CA2),
            borderRadius: BorderRadius.circular(35),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(0, 5),
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              icons.length,
              (index) {
                final isActive = currentIndex == index;
                return GestureDetector(
                  onTap: () => onItemTapped(index),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        color: isActive ? Colors.white : Colors.white54,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        labels[index],
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.white54,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                );
              }
              )
            ),
        ),
        ),
    );

  }
}