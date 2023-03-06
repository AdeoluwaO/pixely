import 'package:flutter/material.dart';

// local imports
import './onboarding_widget.dart';

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
                  Text(
                    'Watch Amazing Movies',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'worlds best movies \nat your finger tips',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
