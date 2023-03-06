import 'package:flutter/material.dart';

// local imports
import './onboarding_widget.dart';
import '../design-system/customtext/headline_text.dart';
import '../design-system/customtext/subtext.dart';

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
                disable: false,
                anim: 'assets/lottie_animations/speakers-music.json'),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.08),
              child: Center(
                child: Column(children: const [
                  HeadlineText(text: 'Audios for the mood'),
                  SubText(size: 18, text: 'All your faves are here')
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
