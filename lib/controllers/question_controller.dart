// ignore_for_file: deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/questions.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            answer: question['option'],
            options: question['answer_index']),
      )
      .toList();

  List<Question> get questions => _questions;

  bool _isAnswared = false;
  bool get isAnswared => _isAnswared;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    //! Start our Animations
    _animationController.forward();

    super.onInit();
  }

  void checkFromAns(Question question, int selectedIndex) {
    _isAnswared = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) {
      _numOfCorrectAns++;

      _animationController.stop();
      update();
    }
  }
}
