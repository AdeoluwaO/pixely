import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

// local imports
import './onboarding_widget.dart';
import '../design-system/customtext/headline_text.dart';

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
                disable: false,
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
                        child: Column(
                          children: [
                            const HeadlineText(text: 'Get Started'),
                            IconButton(
                                iconSize: 40,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Home(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        )),
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
