import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';
import 'package:my_getx_app/app/utils/validators.dart';
import 'package:my_getx_app/app/widgets/custom_button.dart';
import 'package:my_getx_app/app/widgets/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());

    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('assets/images/logo.png')),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Sign into your account",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    // Name
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 6),
                    CustomInputField(hint: 'Username',
                    controller: controller.userNameController,
                    keyboardType: TextInputType.name,
                    validator: Validators.validateNotEmpty,),
                    SizedBox(height: 20),
                    Text(
  'Email',
  style: TextStyle(fontSize: 14, color: Colors.grey),
),
CustomInputField(
  hint: 'Enter your email',
  controller: controller.emailController,
  keyboardType: TextInputType.emailAddress,
  validator: Validators.validateEmail,
),
SizedBox(height: 20),

                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 6),
                    Obx( () =>
                    CustomInputField(hint: 'Password',
                    controller: controller.passwordController,
                    validator:  Validators.validatePassword,
                    onTap: controller.togglePasswordVisibility,
                    obscureText: controller.obscurePassword.value,
                    surffixIcon: Icon(
                      controller.obscurePassword.value ?Icons.visibility : Icons.visibility_off,
                    )
                    ),),
                    SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

CustomButton(
  onPressed: () {

    controller.login();
  },
  text: 'Sign In',
  color: AppColors.primary,
),


                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => Get.toNamed('/register'),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
