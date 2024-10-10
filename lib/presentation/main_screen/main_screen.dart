import 'package:flutter/material.dart';
import 'package:pwa_converter/presentation/converter/converter_screen.dart';
import 'package:pwa_converter/presentation/main_screen/widgets/bottom_nav_bar.dart';
import 'package:pwa_converter/presentation/rates/rates_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;

  final List<Widget> screens = const <Widget>[
    RatesScreen(),
    ConverterScreen(),
  ];

  void changeScreen(int index) => setState(() => currentScreen = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavBar(
        currentScreen: currentScreen,
        onScreenChange: changeScreen,
      ),
    );
  }
}
