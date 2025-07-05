import 'package:app_learn/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, '/home_screen');
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: Text('Welcome to Alpha Learn', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
      )
    );
  }
}