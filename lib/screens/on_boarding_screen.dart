import 'package:flutter/material.dart';
import 'package:store_app/widgets/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
static String id = 'OnBoardingScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingScreenBody(),
    );
  }
}
