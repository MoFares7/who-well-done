// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:quiz_app/views/screens/welcom_screen/welcome_screen.dart';
import 'package:get/get.dart';

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
      theme: ThemeData.dark(),
      home: const WelcomeSceen(),
    );
  }
}
