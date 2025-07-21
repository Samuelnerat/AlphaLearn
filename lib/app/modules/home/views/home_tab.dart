import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
      final authController = Get.find<AuthController>();


 return Center(
      child: Obx(() => Text(
        authController.userEmail.value.isNotEmpty
            ? 'Welcome, ${authController.userEmail.value}'
            : 'Welcome, Guest',
        style: const TextStyle(fontSize: 24),
      )),
    );
  }
}