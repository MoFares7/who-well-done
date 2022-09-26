import 'package:flutter/material.dart';
import 'package:quiz_app/views/screens/quiz/components/main_body_questions.dart';

class QizeScreen extends StatelessWidget {
  const QizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [TextButton(onPressed: () {}, child: Text('Skip'))],
      ),
      body: const MainBody(),
    );
  }
}
