import 'package:flutter/material.dart';

//local imports
import '../onboarding/speakers_widget.dart';
import '../onboarding/food_widget.dart';
import '../onboarding/movies_widget.dart';

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
            children: const [MovieWidget(), SpeakerWidget(), FoodWidget()]),
      ),
      bottomSheet: Visibility(
        visible: isVisible,
        child: Row(
          children: [
            TextButton(
              child: const Text(
                'skip',
                style: TextStyle(fontSize: 26),
              ),
              onPressed: () {
                _controller.jumpToPage(2);
              },
            ),
            const Spacer(
              flex: 1,
            ),
            TextButton(
              child: const Text(
                'next',
                style: TextStyle(fontSize: 26),
              ),
              onPressed: () {
                _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
            )
          ],
        ),
      ),
    );
  }
}
