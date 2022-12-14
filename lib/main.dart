// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:quiz_app/views/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Who Well Done',
      theme: AppTheme.light(),
      home:  const SplashScreen(),
    );
  }
}
