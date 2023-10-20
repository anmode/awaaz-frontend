import 'package:awaaz/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class IntroText extends StatelessWidget {
  final String text;
  const IntroText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.comfortaa(
          color: Colors.black, fontSize: getScreenWidth(context) * 0.045),
    );
  }
}
