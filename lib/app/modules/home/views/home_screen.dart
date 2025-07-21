
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:my_getx_app/app/modules/favorites/views/favorites_screen.dart';
import 'package:my_getx_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_getx_app/app/modules/home/views/home_tab.dart';
import 'package:my_getx_app/app/modules/movies/views/movies_screen.dart';
import 'package:my_getx_app/app/modules/profile/views/profile_screen.dart';
import 'package:my_getx_app/app/utils/constants/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    final List<Widget> pages = [
      HomeTab(),
      MoviesScreen(),
      FavoritesScreen(),
      ProfileView(),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text('Alpha Learn')),
      // body: HomeBody(),
      body: Obx(() => pages[homeController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => 
      BottomNavigationBar(
        currentIndex: homeController.selectedIndex.value,
        onTap: homeController.onTabSelected,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      ),
    );
  }
}