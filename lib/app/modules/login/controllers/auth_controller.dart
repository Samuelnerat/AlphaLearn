import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/home/views/home_screen.dart';

class AuthController extends GetxController {

     var userEmail = ''.obs;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final userNameController = TextEditingController();



  var obscurePassword = true.obs;
  var isLoading = false.obs;

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  // void register() async {
  //   if (formKey.currentState!.validate() ?? false) {
  //     isLoading.value = true;
  //     await Future.delayed(const Duration(seconds: 2));
  //     isLoading.value = false;
  //     Get.snackbar('Success', 'Registration successful');
  //     Get.offAll(() => HomeScreen());
  //   }
  // }

  // void register() {
  //   if (formKey.currentState?.validate() ?? false) {
  //     isLoading.value = true;
  //     Future.delayed(Duration(seconds: 2), () {
  //       isLoading.value = false;
  //       Get.snackbar('Success', 'Registration successful');
  //       Get.offAll(() => HomeScreen());
  //     });
  //   }
  // }

    void register() {
    if (formKey.currentState?.validate() ?? false) {
       userEmail.value = emailController.text.trim();
      isLoading.value = true;
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
        Get.snackbar('Success', 'Registration successful');
        Get.offAll(() => HomeScreen());
      });
    }
  }

  // void login() {
  //   if (formKey.currentState?.validate() ?? false) {
  //     isLoading.value = true;
  //     Future.delayed(Duration(seconds: 2), () {
  //       isLoading.value = false;
  //       Get.snackbar('Success', 'Login successful');
  //       Get.offAll(() => HomeScreen());
  //     });
  //   }
  // }


void login() {
  if (formKey.currentState?.validate() ?? false) {
    // print("DEBUG: emailController.text = ${emailController.text}");
    userEmail.value = emailController.text.trim();
    // print("DEBUG: Email saved to AuthController: ${userEmail.value}");

    isLoading.value = true;

    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;

      Get.snackbar('Success', 'Login successful');
      Get.offAll(() => HomeScreen());
    });
  }
}

}


