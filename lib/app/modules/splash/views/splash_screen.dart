import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/onboarding/views/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static bool _navigated = false; 

  void _navigateOnce(BuildContext context) {
    if (_navigated) return;
    _navigated = true;

    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    _navigateOnce(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', 
              height: 120,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Alpha Learn',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
