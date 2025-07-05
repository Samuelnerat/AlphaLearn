// import 'package:app_learn/form_validation/login.dart';
// // import 'package:app_learn/form_validation/register.dart';
// import 'package:flutter/material.dart';

// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//       child: Center(
//       child: Column(
//         children: [
//           Image.asset('assets/images/img3.png'),
//           SizedBox(height: 10,),
//           Text('Welcome to Alpha Learn', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
//         Padding(padding: EdgeInsetsGeometry.all(16),
//         child: Text('Your companion through every lecture' 'every quiz and every late-night study'),),
//         SizedBox(height: 30,),
//         ElevatedButton(onPressed: () {
//                 Navigator.pushReplacement(context,
//       MaterialPageRoute(builder: (context) => LoginScreen()),
//       // MaterialPageRoute(builder: (context) => Register()),
//       );
//         },
//         style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//         child: Text('Get Started', style: TextStyle(color: Colors.black),)),
//         ],
//       )
//       )
//       )
//     );
//   }
// }

import 'package:app_learn/form_validation/login.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Image
                  Image.asset(
                    'assets/images/img3.png',
                    height: 250,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 30),

                  // Welcome Text
                  Text(
                    'Welcome to Alpha Learn',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 10),

                  // Tagline Text
                  Text(
                    'Your companion through every lecture, every quiz, and every late-night study.',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 40),

                  // Get Started Button (Full width with arrow)
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        // side: BorderSide(color: Colors.green, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        elevation: 2,
                      ),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Get Started',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     ),
                      //     Icon(Icons.arrow_forward, color: Colors.white),
                      //   ],
                      // ),
                      child: Stack(
  alignment: Alignment.center,
  children: [
    Center(
      child: Text(
        'Get Started',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    Positioned(
      right: 0,
      child: Icon(Icons.arrow_forward, color: Colors.white),
    ),
  ],
),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
