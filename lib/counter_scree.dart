import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/getx_controller.dart';

class CounterScreen extends StatelessWidget {
  // const CounterScreen({Key? key}) : super(key: key);
  UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: Obx(
          () => Text(
              "${userController.myUser.value.name} & ${userController.myUser.value.age}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle_outline),
          onPressed: () {
            userController.ToUpperCase();
            userController.increaseAge();
          }),
    );
  }
}
