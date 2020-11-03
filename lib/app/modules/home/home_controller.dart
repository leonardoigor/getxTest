import 'package:get/get.dart';
import 'package:teste_getx_igor/app/stores/user_store.dart';

class HomeController extends GetxController {
  final UserStore _userStore;
  HomeController(this._userStore);

  get user => this._userStore.user;
}
