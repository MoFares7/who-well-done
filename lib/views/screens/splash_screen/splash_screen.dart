import 'package:flutter/material.dart';
import 'package:quiz_app/config/constants.dart';
import 'package:quiz_app/views/screens/welcom_screen/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset('assets/icons/bg.svg',
              fit: BoxFit.cover, width: double.maxFinite),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.asset('assets/images/icon_quiz.png')),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPadding * 3),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomeSceen()));
                        },
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Lets Start Game',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
