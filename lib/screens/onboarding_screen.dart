import 'package:flutter/material.dart';

//local imports
import '../onboarding/speakers_widget.dart';
import '../onboarding/food_widget.dart';
import '../onboarding/movies_widget.dart';
import '../onboarding/onboarding_widget.dart';

// for test only
import './home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  final _controller = PageController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
            controller: _controller,
            children: [MovieWidget(), SpeakerWidget(), FoodWidget()]),
      ),
      bottomSheet: Visibility(
        visible: isVisible,
        child: Row(
          children: [
            TextButton(
              child: Text(
                'skip',
                style: TextStyle(fontSize: 26),
              ),
              onPressed: () {
                _controller.jumpToPage(2);
              },
            ),
            Spacer(
              flex: 1,
            ),
            TextButton(
              child: Text(
                'next',
                style: TextStyle(fontSize: 26),
              ),
              onPressed: () {
                _controller.nextPage(
                    duration: Duration(milliseconds: 300), curve: Curves.ease);
              },
            )
          ],
        ),
      ),
    );
  }
}
