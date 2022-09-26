import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
      body: Stack(
        children: [
          WebsafeSvg.asset('assets/icons/bg.svg'),
        ],
      ),
    );
  }
}
