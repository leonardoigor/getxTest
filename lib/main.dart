import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:teste_getx_igor/app/app_binding/app_binding.dart';
import 'package:teste_getx_igor/app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialBinding: AppBinding(),
      initialRoute: AppRoutes.login,
    );
  }
}
