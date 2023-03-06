import 'package:flutter/material.dart';

// local imports
import './onboarding_widget.dart';
import '../design-system/customtext/headline_text.dart';
import '../design-system/customtext/subtext.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key});

// uses the onboarding widget to dispaly animation
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          const OnboardingWidget(
              disable: false,
              anim: 'assets/lottie_animations/watch-a-movie-with-popcorn.json'),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08),
            child: Center(
              child: Column(
                children: const [
                  HeadlineText(text: 'Watch Amazing Movies'),
                  Center(
                    child: SubText(
                      text: 'Best series and Tv Shows',
                      size: 19,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
