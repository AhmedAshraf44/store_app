import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/widgets/arrow_icon.dart';
import 'package:store_app/widgets/on_boarding_pages.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      scrollPhysics: const BouncingScrollPhysics(),
      pages: OnBoardingPages.pages,
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.blue),
      ),
      done: const ArrowIcon(),
      next: const ArrowIcon(),
      onSkip: () {
        Navigator.pushNamed(context, HomeScreen.id);
      },
      onDone: () {
         Navigator.pushNamed(context, HomeScreen.id);
      },
      dotsDecorator: DotsDecorator(
        spacing: const EdgeInsets.all(4),
        size: const Size.square(10.0),
        color: const Color(0xffE6E6E6),
        activeSize: const Size(10.0, 10.0),
        activeColor: Colors.blue,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
