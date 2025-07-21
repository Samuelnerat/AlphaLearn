import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';
import 'package:my_getx_app/app/utils/bindings/binding.dart';

import 'app/routes/app_pages.dart';

void main() {
   Get.put(AuthController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) => GetMaterialApp(
        title: 'Alpha Learn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
        initialRoute: AppRoutes.splash,
        getPages: AppPages.pages,
        initialBinding: AppBindings(), 
      ),
    );
  }
}
