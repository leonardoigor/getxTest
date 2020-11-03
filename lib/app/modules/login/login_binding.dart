import 'package:get/get.dart';
import 'package:teste_getx_igor/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
