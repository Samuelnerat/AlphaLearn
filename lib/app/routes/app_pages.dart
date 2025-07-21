import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/home/views/home_screen.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';
import 'package:my_getx_app/app/modules/login/views/login.dart';
import 'package:my_getx_app/app/modules/register/views/register.dart';
import 'package:my_getx_app/app/modules/splash/views/splash_screen.dart';

part 'app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(
  name: '/login',
  page: () => LoginScreen(),
  binding: BindingsBuilder(() {
    Get.lazyPut<AuthController>(() => AuthController());
  }),
),

    GetPage(name: AppRoutes.register, page: () => Register()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
  ];
}
