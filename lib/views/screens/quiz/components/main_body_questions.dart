import 'package:quiz_app/config/constants.dart';
import 'package:quiz_app/views/screens/quiz/components/progress_bar.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset('assets/icons/bg.svg'),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                const ProgressBar(),
                const SizedBox(height: kDefaultPadding),
                Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
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
