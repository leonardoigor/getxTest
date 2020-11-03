import 'package:get/get.dart';
import 'package:teste_getx_igor/app/modules/home/home_binding.dart';
import 'package:teste_getx_igor/app/modules/home/home_page.dart';
import 'package:teste_getx_igor/app/modules/login/login_binding.dart';
import 'package:teste_getx_igor/app/modules/login/login_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(
        controller: Get.find(),
      ),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(
        controller: Get.find(),
      ),
      binding: HomeBinding(),
    ),
  ];
}
