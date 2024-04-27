import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/on_boarding_screen.dart';

import 'screens/details_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        DetailsScreen.id: (context) =>const DetailsScreen(),
        // UpdateScreen.id: (context) => UpdateScreen(),
        // ChooseScreen.id: (context) => const ChooseScreen(),
        // AddProductScreen.id: (context) =>const AddProductScreen(),
      },
      initialRoute: OnBoardingScreen.id,
    );
  }
}
