import 'package:flutter/material.dart';

// local package imports
import './screens/onboarding_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Container(
        color: Colors.white,
        child: const OnboardingScreen(),
      ),
    ),
  );
}
