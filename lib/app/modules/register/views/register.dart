import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';
import 'package:my_getx_app/app/utils/validators.dart';
import 'package:my_getx_app/app/widgets/custom_button.dart';
import 'package:my_getx_app/app/widgets/custom_input_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        "Let's You In",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Create your account",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    Text('Your Name', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    CustomInputField(hint: 'Name',
                    controller: controller.nameController,
                    keyboardType: TextInputType.name,
                    validator: Validators.validateNotEmpty,),
                    SizedBox(height: 10),

                    Text('Username', style: TextStyle(fontSize: 14, color: Colors.grey)),
                     CustomInputField(hint: 'userame',
                    controller: controller.userNameController,
                    keyboardType: TextInputType.name,
                    validator: Validators.validateNotEmpty,),
                    SizedBox(height: 10),

                    Text('Email', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    CustomInputField(hint: 'Email',
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.validateEmail,),
                    SizedBox(height: 10),

                    Text('Password', style: TextStyle(fontSize: 14, color: Colors.grey)),
                  Obx( () => 
                  CustomInputField(hint: 'Password',
                    controller: controller.passwordController,
                    validator:  Validators.validatePassword,
                    onTap: controller.togglePasswordVisibility,
                    obscureText: controller.obscurePassword.value,
                    surffixIcon: Icon(
                      controller.obscurePassword.value ?Icons.visibility : Icons.visibility_off,
                    )
                    ),
                  ),
                    SizedBox(height: 30),
//                   CustomButton(
//   onPressed: () {
//   if (controller.formKey.currentState!.validate()) {
//     Get.toNamed('/home');
//   } else {
//     Get.snackbar(
//       'Validation Failed',
//       'Please fill all fields correctly.',
//       backgroundColor: Colors.redAccent,
//       colorText: Colors.white,
//     );
//   }
// },
//   text: 'Create Account',
//   color: AppColors.primary,
// ),
CustomButton(
  onPressed: () {

    controller.register();
  },
  text: 'Create Account',
  color: AppColors.primary,
),

                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Google Sign-In tapped")),
                            );
                          },
                          icon: Image.asset(
                            'assets/images/google.png',
                            height: 20,
                          ),
                          label: Text('Google'),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(color: Colors.grey.shade300),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                          ),
                        ),
                        OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Apple Sign-In tapped")),
                            );
                          },
                          icon: Icon(Icons.apple, color: Colors.black),
                          label: Text('Apple'),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(color: Colors.grey.shade300),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => Get.toNamed('/login'),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.green,
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
