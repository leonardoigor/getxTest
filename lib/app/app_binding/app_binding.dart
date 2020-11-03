import 'package:get/get.dart';
import 'package:teste_getx_igor/app/stores/user_store.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserStore());
  }
}
