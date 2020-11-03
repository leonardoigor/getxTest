import 'package:get/get.dart';
import 'package:teste_getx_igor/app/models/user_model.dart';
import 'package:teste_getx_igor/app/routes/app_pages.dart';

import '../../stores/user_store.dart';

class LoginController extends GetxController {
  final UserStore _userStore;

  LoginController(this._userStore);

  final _loading = false.obs;
  bool get loading => this._loading.value;
  set loading(bool value) => this._loading.value = value;

  Future<void> login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 3));
    _userStore.user = UserModel('Igor');
    loading = false;
    Get.offAllNamed(AppRoutes.home);
  }
}
