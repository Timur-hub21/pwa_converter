import 'package:flutter/material.dart';
import 'package:pwa_converter/application.dart';
import 'package:pwa_converter/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(const Application());
}
