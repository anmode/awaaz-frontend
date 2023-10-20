import 'package:awaaz/constants/colors.dart';
import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/auth/ui/login_page.dart';
import 'package:awaaz/features/on_boarding/ui/intro_page1.dart';
import 'package:awaaz/features/on_boarding/ui/intro_page2.dart';
import 'package:awaaz/features/on_boarding/ui/intro_page3.dart';
import 'package:awaaz/features/on_boarding/ui/intro_page4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  void _completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasSeenOnboarding', true);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const LoginPage())); // PageViewHome()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            controller: _controller,
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4()
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: const WormEffect(
                        dotColor: navyBlue,
                        activeDotColor: orange,
                      ),
                    ),
                  ],
                ),
                if (onLastPage)
                  AnimatedContainer(
                    alignment: Alignment.centerRight,
                    duration: const Duration(milliseconds: 200),
                    child: TextButton(
                      onPressed: _completeOnboarding,
                      child: SizedBox(
                        width: getScreenWidth(context) * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Swipe',
                              style: GoogleFonts.comfortaa(color: orange),
                            ),
                            const Icon(
                              Icons.arrow_right,
                              color: orange,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                if (onLastPage) const SizedBox(height: 20),
                if (!onLastPage)
                  const SizedBox(
                    height: 60,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
