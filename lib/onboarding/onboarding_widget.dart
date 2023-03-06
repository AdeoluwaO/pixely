import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({Key? key, required this.anim}) : super(key: key);
  final String anim;

  @override
  // return type of this class must be a lottie builder
  Widget build(BuildContext context) {
    return Lottie.asset(anim);
  }
}
