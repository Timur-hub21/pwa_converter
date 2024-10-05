import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentScreen;
  final ValueChanged<int> onScreenChange;

  const BottomNavBar({
    super.key,
    required this.currentScreen,
    required this.onScreenChange,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: currentScreen,
      onTap: onScreenChange,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.currency_exchange_outlined,
            size: 20,
          ),
          label: 'Rates',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.change_circle_outlined,
            size: 24,
          ),
          label: 'Convert',
        ),
      ],
    );
  }
}
