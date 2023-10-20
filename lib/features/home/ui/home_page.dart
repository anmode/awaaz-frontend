import 'package:awaaz/constants/colors.dart';
import 'package:awaaz/constants/dimensions.dart';
import 'package:awaaz/features/Talk/ui/talk_page.dart';
import 'package:awaaz/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    homeBloc.add(HomeInitialEvent());
  }

  bool isAnimate = false;
  HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is FoundUser) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TalkPage()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeIntialState:
            return Scaffold(
              body: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTapUp: (details) {
                          setState(() {
                            isAnimate = false;
                          });
                          homeBloc.add(SearchButtonClickedEvent());
                        },
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
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin:
                              EdgeInsets.all(getScreenWidth(context) * 0.06),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isAnimate ? lightPink : brightPink,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: getScreenWidth(context) * 0.1,
                              vertical: getScreenWidth(context) * 0.025),
                          child: Text(
                            'SEARCH',
                            style: TextStyle(
                                color: isAnimate ? brightPink : lightPink,
                                fontSize: getScreenWidth(context) * 0.05),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          case SearchButtonClickedState:
            Future.delayed(const Duration(milliseconds: 100), () {
              homeBloc.add(UserFoundEvent());
            });
            return Scaffold(
              body: Center(
                child: Lottie.asset('assets/svgs/heart.json'),
              ),
            );

          default:
            return const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
        }
      },
    );
  }
}
