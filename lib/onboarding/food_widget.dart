import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

// local imports
import './onboarding_widget.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({Key? key}) : super(key: key);
  @override
// uses the onboarding widget to diplay animation
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            const OnboardingWidget(
                anim: 'assets/lottie_animations/metaverse-food-delivery.json'),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: Container(
                      margin: EdgeInsetsDirectional.only(
                          top: MediaQuery.of(context).size.height * 0.15),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
