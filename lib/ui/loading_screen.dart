import 'package:flutter/material.dart';

// local imports
import '../onboarding/onboarding_widget.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        top: MediaQuery.of(context).size.height * 0.2,
        // bottom: MediaQuery.of(context).size.height * 0.5
      ),
      child: Column(
        children: const [
          OnboardingWidget(
              disable: true,
              anim: 'assets/lottie_animations/loading-wave.json'),
        ],
      ),
    );
  }
}
