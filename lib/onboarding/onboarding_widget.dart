import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({Key? key, required this.anim}) : super(key: key);
  final String anim;

  @override
  // return type of this class must be a lottie builder
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Container(
        color: Colors.white,
        child: Lottie.asset(
          anim,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
