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

  final List _pages = const [MovieWidget(), SpeakerWidget(), FoodWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: _pages.length,
          itemBuilder: (_, index) {
            return Container(
              child: _pages[index],
            );
          }),
    );
  }
}
