import 'package:flutter/material.dart';
import 'package:pwa_converter/presentation/main_screen/main_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PWA Converter',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
