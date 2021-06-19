import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/getx_controller.dart';
import 'package:learngetx/getx_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    print(userController.runtimeType);
    return GetMaterialApp(
      title: "Learn With Getx",
      getPages: myGetxRoutes,
      unknownRoute: unKownRoute,
    );
  }
}
