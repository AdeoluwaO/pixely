import 'package:flutter/material.dart';

// local package imports
import './screens/onboarding_screen.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Container(
        color: Colors.white,
        child: const OnboardingScreen(),
      ),
    );
  }
}
