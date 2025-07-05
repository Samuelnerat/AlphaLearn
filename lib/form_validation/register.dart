// import 'package:app_learn/screens/home_screen.dart';
// import 'package:flutter/material.dart';

// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();

//   bool isLoading = false;
//   bool hiddenPassword = false;

//   InputDecoration inputDecoration(String hint, String text) {
//     return InputDecoration(
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       labelText: text,
//       hintText: hint,
//     );
//   }

//   void _submit() {
//     final isValid = _formKey.currentState!.validate();
//     if (isValid) {
//       _formKey.currentState?.save();
//       print('data saved');
//       setState(() => isLoading = true);

//       Future.delayed(Duration(seconds: 2), () {
//                       Navigator.pushReplacement(context, 
//       MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//         setState(() {
//           isLoading = false;
//         });
//         ScaffoldMessenger.of(
//           context,
//         ).showSnackBar(SnackBar(content: Text('Registration Successful')));
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.greenAccent,
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: EdgeInsets.all(24),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/images/img3.png'),
//                   SizedBox(height: 10),
//                   Text(
//                     "Let's You In",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     "Create your account",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                   Text(
//                     'Name',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('name', 'name'),
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter your name' : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Name',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('username', 'username'),
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter your name' : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Name',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('Email', 'Email'),
//                     keyboardType: TextInputType.emailAddress,
//                     validator: (value) => value!.isEmpty || !value.contains("@")
//                         ? 'Enter valid email'
//                         : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Name',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextFormField(
//                     controller: _passwordController,
//                     decoration: inputDecoration('Password', 'Password')
//                         .copyWith(
//                           suffixIcon: hiddenPassword
//                               ? Icon(Icons.remove_red_eye)
//                               : Icon(Icons.remove_red_eye_sharp),
//                         ),
//                     onTap: () {
//                       setState(() {
//                         hiddenPassword = !hiddenPassword;
//                       });
//                     },
//                     validator: (value) =>
//                         value!.length < 8 ? 'Password too short' : null,
//                     onChanged: (value) {
//                       // setState(() {
//                       //   hiddenPassword == !hiddenPassword;
//                       // });
//                     },
//                     obscureText: hiddenPassword ? true : false,
//                   ),
//                   SizedBox(height: 30),
//                   SizedBox(
//                     height: 70,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green.shade400,
//                         padding: EdgeInsets.symmetric(
//                           // horizontal: 30,
//                           vertical: 16,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         // minimumSize: Size(500, 0),
//                       ),
//                       onPressed: _submit,
//                       child: isLoading
//                           ? CircularProgressIndicator(color: Colors.white)
//                           : Text(
//                               'Create Account',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                     ),
//                   ),
//                   SizedBox(height: 40),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(' Already have an account?'),
//                       Text(
//                         'Sign in',
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// // import 'package:app_learn/form_validation/register.dart';
// import 'package:app_learn/form_validation/login.dart';
// import 'package:app_learn/screens/home_screen.dart';
// import 'package:flutter/material.dart';

// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();

//   bool isLoading = false;
//   bool hiddenPassword = false;

//   InputDecoration inputDecoration( String text) {
//     return InputDecoration(
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       labelText: text,
//       // hintText: hint,
//     );
//   }

//   void _submit() {
//     final isValid = _formKey.currentState!.validate();
//     if (isValid) {
//       _formKey.currentState?.save();
//       print('data saved');
//       setState(() => isLoading = true);

//       Future.delayed(Duration(seconds: 2), () {
//                       Navigator.pushReplacement(context, 
//       MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//         setState(() {
//           isLoading = false;
//         });
//         ScaffoldMessenger.of(
//           context,
//         ).showSnackBar(SnackBar(content: Text('Registration Successful')));
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.greenAccent.shade100,
//       body: SafeArea(
        
//           child: SingleChildScrollView(
//             padding: EdgeInsets.all(16),
//             child: Center(
//               child: Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(24),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 10,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(child: Image.asset('assets/images/logo.png')),
//                   SizedBox(height: 10),
//                   Center(
//                   child: Text(
//                     "Let's You In",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   ),
//                   Center(
//                   child: Text(
//                     "Create your account",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   ),
//                   SizedBox(height: 30),
//                   Text(
//                     'Your Name',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('name', ),
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter your name' : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Username',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('username'),
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter your Username' : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Email',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: inputDecoration('Email'),
//                     keyboardType: TextInputType.emailAddress,
//                     validator: (value) => value!.isEmpty || !value.contains("@")
//                         ? 'Enter valid email'
//                         : null,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Password',
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   TextFormField(
//                     controller: _passwordController,
//                     decoration: inputDecoration('Password')
//                         .copyWith(
//                           suffixIcon: hiddenPassword
//                               ? Icon(Icons.remove_red_eye)
//                               : Icon(Icons.remove_red_eye_sharp),
//                         ),
//                     onTap: () {
//                       setState(() {
//                         hiddenPassword = !hiddenPassword;
//                       });
//                     },
//                     validator: (value) =>
//                         value!.length < 8 ? 'Password too short' : null,
//                     onChanged: (value) {
//                       // setState(() {
//                       //   hiddenPassword == !hiddenPassword;
//                       // });
//                     },
//                     obscureText: hiddenPassword ? true : false,
//                   ),
//                   SizedBox(height: 30),
//                   SizedBox(
//                     height: 60,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green.shade400,
//                         padding: EdgeInsets.symmetric(
//                           // horizontal: 30,
//                           vertical: 14,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         // minimumSize: Size(500, 0),
//                       ),
//                       onPressed: _submit,
//                       child: isLoading
//                           ? CircularProgressIndicator(color: Colors.white)
//                           : Text(
//                               'Create Account',
//                               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                             ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.center,
//                   //   children: [
//                   //     Text(' Already have an account?'),
//                   //     Text(
//                   //       'Sign in',
//                   //       style: TextStyle(
//                   //         color: Colors.green,
//                   //         fontWeight: FontWeight.normal,
//                   //       ),
//                   //     ),
//                   //   ],
//                   // ),
//                   Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text("Already have an account?", style: TextStyle(color: Colors.grey)),
//     SizedBox(width: 5),
//     GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => LoginScreen()),
//         );
//       },
//       child: Text(
//         'Sign in',
//         style: TextStyle(
//           color: Colors.green,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   ],
// )

//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:app_learn/form_validation/login.dart';
import 'package:app_learn/screens/home_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  bool isLoading = false;
  bool hiddenPassword = true;

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      labelText: label,
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState?.save();
      setState(() => isLoading = true);

      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration Successful')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                key: _formKey,
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
                    TextFormField(
                      decoration: inputDecoration('Name'),
                      validator: (value) => value!.isEmpty ? 'Enter your name' : null,
                    ),
                    SizedBox(height: 10),

                    Text('Username', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    TextFormField(
                      decoration: inputDecoration('Username'),
                      validator: (value) => value!.isEmpty ? 'Enter your username' : null,
                    ),
                    SizedBox(height: 10),

                    Text('Email', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    TextFormField(
                      decoration: inputDecoration('Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => value!.isEmpty || !value.contains("@")
                          ? 'Enter a valid email'
                          : null,
                    ),
                    SizedBox(height: 10),

                    Text('Password', style: TextStyle(fontSize: 14, color: Colors.grey)),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: hiddenPassword,
                      decoration: inputDecoration('Password').copyWith(
                        suffixIcon: IconButton(
                          icon: Icon(
                            hiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() => hiddenPassword = !hiddenPassword);
                          },
                        ),
                      ),
                      validator: (value) => value!.length < 8
                          ? 'Password must be at least 8 characters'
                          : null,
                    ),
                    SizedBox(height: 30),

                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade400,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: _submit,
                        child: isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                                'Create Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),

                    // Google & Apple Buttons
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
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
