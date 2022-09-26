import 'package:flutter/rendering.dart';
import 'package:quiz_app/config/constants.dart';
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
                ProgressBar(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      color: Colors.white,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border:
            Border.all(color: const Color(0xFF3F4768), width: 3),
      ),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                gradient: kPrimaryGradient,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('18 sec'),
                WebsafeSvg.asset('assets/icons/clock.svg'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
