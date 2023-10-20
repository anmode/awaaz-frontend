import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/on_boarding/widgets/intro_text.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/pngs/image 3.png'),
              SizedBox(
                width: getScreenWidth(context) * 0.9,
                child: const IntroText(text: 'Broken heart? Let Heart2Heart help you pick up the pieces. Connect with others who understand and find the support and guidance you need to heal and move forward.',),
              )
            ],
          ),
        ),
      ),
    );
  }
}
