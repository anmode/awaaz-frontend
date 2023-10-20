import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/on_boarding/widgets/intro_text.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/pngs/image 2.png'),
              SizedBox(
                width: getScreenWidth(context) * 0.9,
                child: const IntroText(text: 'Heartbreak hurts, but healing is possible. Let Heart2Heart be your guide to finding hope and strength in a community of guys who care.',),
              )
            ],
          ),
        ),
      ),
    );
  }
}
