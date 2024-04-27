import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPages {
  static List<PageViewModel> pages = [
    PageViewModel(
      decoration: const PageDecoration(
        imageFlex: 2,
      ),
      body:
          'Browse thousands of products, from fashion to tech. Find what you love, effortlessly.',
      titleWidget:const Text(
        'Discover Our Products',
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
      ),
      image: Image.asset(
        'assets/image/intro1.png',
      ),
    ),
    PageViewModel(
      decoration: const PageDecoration(
        imageFlex: 2,
      ),
      body:
          'Seamless payments and speedy delivery. Start shopping smarter today.',
      titleWidget:const Text(
        'Hassle-Free Checkout',
        style:TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
      ),
      image: Image.asset(
        'assets/image/intro2.png',
      ),
    ),
    PageViewModel(
      decoration: const PageDecoration(
        imageFlex: 2,
      ),
      body:
          'Start shopping now and enjoy a world of convenience!"',
      titleWidget:const Text(
        'Easy and Happy Shopping',
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
        ),
      ),
      image: Image.asset(
        'assets/image/intro3.png',
      ),
    ),
  ];
}
