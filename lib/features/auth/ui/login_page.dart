import 'package:awaaz/constants/colors.dart';
import 'package:awaaz/features/auth/widgets/animated_large_button.dart';
import 'package:awaaz/features/home/ui/home_page.dart';
import 'package:awaaz/features/on_boarding/widgets/intro_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAnimate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/pngs/2.png'),
                  const IntroText(text: 'Heart 2 Heart'),
                ],
              ),
              AnimatedLargeButton(
                text: 'Continue with google!',
                function: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
