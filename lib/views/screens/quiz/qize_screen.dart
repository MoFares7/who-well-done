// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/views/screens/quiz/components/main_body_questions.dart';
import 'package:get/get.dart';

class QizeScreen extends StatelessWidget {
  const QizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: questionController.nextQuestion, child: const Text('Skip'))
        ],
      ),
      body: const MainBody(),
    );
  }
}
