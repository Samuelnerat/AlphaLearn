import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';

class ProfileController extends GetxController {
  final username = '@john_doe'.obs;
  final name = 'John Doe'.obs;
  final email = 'me@gmail.com'.obs;
  final bio = 'I am a Flutter beginner. I love building simple and clean mobile apps.'.obs;

    @override
  void onInit() {
    final authController = Get.find<AuthController>();
    email.value = authController.userEmail.value;
    super.onInit();
  }
}

