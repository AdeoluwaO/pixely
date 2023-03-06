import 'package:flutter/material.dart';

// local imports
import './onboarding_widget.dart';

class SpeakerWidget extends StatelessWidget {
  const SpeakerWidget({Key? key}) : super(key: key);

// uses the onboarding widget to display animation
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            const OnboardingWidget(
                anim: 'assets/lottie_animations/speakers-music.json'),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.015),
              child: Center(
                child: Column(children: const [
                  Text(
                    'Audio that makes you move',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'you can sleep on a beat \nall your faves are here!!!',
                    style: TextStyle(fontSize: 15),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
