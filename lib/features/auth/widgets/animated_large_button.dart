import 'package:awaaz/constants/colors.dart';
import 'package:awaaz/constants/dimensions.dart';
import 'package:flutter/material.dart';

class AnimatedLargeButton extends StatefulWidget {
  final String text;
  final VoidCallback function;
  const AnimatedLargeButton({
    required this.text,
    required this.function,
    super.key,
  });

  @override
  State<AnimatedLargeButton> createState() => _AnimatedLargeButtonState();
}

class _AnimatedLargeButtonState extends State<AnimatedLargeButton> {
  bool isAnimate = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isAnimate = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isAnimate = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          isAnimate = false;
        });
        widget.function();
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(vertical: getScreenWidth(context) * 0.04),
        alignment: Alignment.center,
        duration: const Duration(
          milliseconds: 200,
        ),
        width: isAnimate
            ? getScreenWidth(context) * 0.8
            : getScreenWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: isAnimate ? lightPink : brightPink,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.text,
          style:
              const TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
