import 'package:flutter/material.dart';
import 'package:quiz_app/views/screens/quiz/components/main_body_questions.dart';
import 'package:quiz_app/views/screens/quiz/qize_screen.dart';
import 'package:quiz_app/views/screens/welcom_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Who Well Done',
      theme: ThemeData.dark(),
      home: QizeScreen(),
    );
  }
}
