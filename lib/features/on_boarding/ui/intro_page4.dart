import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/on_boarding/widgets/intro_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/svgs/image 4.svg'),
              SizedBox(
                width: getScreenWidth(context) * 0.9,
                child: const IntroText(text: '"Connect, heal, and move forward: An anonymous voice for your heart."',),
              ),
              const IntroText(text: 'Heart2Heart')
              
            ],
          ),
        ),
      ),
    );
  }
}
