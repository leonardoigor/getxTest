import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;
  const HomePage({
    Key key,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: Center(
          child: Obx(
            () => Text('Bem vindo ${controller.user.name}'),
          ),
        ),
      ),
    );
  }
}
