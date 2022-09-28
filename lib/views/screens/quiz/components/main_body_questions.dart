// ignore_for_file: depend_on_referenced_packages

import 'package:quiz_app/config/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/views/screens/quiz/components/question_card.dart';
import 'package:quiz_app/views/screens/quiz/components/progress_bar.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset('assets/icons/bg.svg', width: double.infinity),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: ProgressBar(),
                ),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Question ${questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/${questionController.questions.length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: kSecondaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Expanded(
                  child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: questionController.pageController,
                    onPageChanged: questionController.updateTheQnNum,
                    itemCount: questionController.questions.length,
                    itemBuilder: ((context, index) => QuestionCard(
                          question: questionController.questions[index],
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
