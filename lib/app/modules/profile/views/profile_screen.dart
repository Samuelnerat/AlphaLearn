import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            const SizedBox(height: 20),
            Obx(() => Text('Username: ${controller.username.value}', style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 10),
            Obx(() => Text('Name: ${controller.name.value}', style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 10),
            Obx(() => Text('Email: ${controller.email.value}', style: const TextStyle(fontSize: 16))),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bio:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                controller.bio.value,
                style: const TextStyle(fontSize: 16),
              ),
            )),
            const SizedBox(height: 30),
            const Text(
              'Connect with me:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
