import 'package:get/get.dart';
import 'package:teste_getx_igor/app/models/user_model.dart';

class UserStore extends GetxService {
  final _user = Rx<UserModel>();
  get user => this._user.value;
  set user(value) => this._user.value = value;
}
