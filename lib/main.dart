import 'package:awaaz/features/home/ui/home_page.dart';
import 'package:awaaz/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
