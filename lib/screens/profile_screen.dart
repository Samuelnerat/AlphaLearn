// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile'),
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: const [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Username: @john_doe', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Text('Name: John Doe', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Text('Email: john@example.com', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bio:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                    'I am a Flutter beginner. I love building simple and clean mobile apps.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Connect with me:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.facebook, size: 30, color: Colors.blue),
                SizedBox(width: 20),
                Icon(Icons.camera_alt, size: 30, color: Colors.pink),
                SizedBox(width: 20),
                Icon(Icons.work, size: 30, color: Colors.blueAccent),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
