import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;

  const LoginPage({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => RaisedButton(
                onPressed: controller.loading ? null : controller.login,
                child: Text("Login!"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Visibility(
                visible: controller.loading,
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
