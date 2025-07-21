import 'package:get/get.dart';
import 'package:my_getx_app/app/modules/login/controllers/auth_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.lazyPut<AuthController>(() => AuthController());

  }
}
