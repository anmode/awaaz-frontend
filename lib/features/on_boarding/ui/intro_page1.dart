import 'package:awaaz/constants/colors.dart';
import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/on_boarding/widgets/intro_text.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/pngs/image 1.png'),
              SizedBox(
                width: getScreenWidth(context) * 0.9,
                child: const IntroText(text: 'Heart2Heart provides a safe and anonymous space for users to share their thoughts and feelings without the fear of judgment or repercussions.',),
              )
            ],
          ),
        ),
      ),
    );
  }
}
