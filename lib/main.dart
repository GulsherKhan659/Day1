import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/getx_controller.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
 // final MyGetx counterController = Get.put(MyGetx());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Learn With Getx",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Getx"),
        ),
      body:ContainerBody(),
      floatingActionButton: GetBuilder<MyGetx>(
        init: MyGetx(),
        builder: (controller) {
          return FloatingActionButton(
            child: Icon(Icons.add_circle_outline),
            onPressed:()=> controller.getCount(),
          );
        }
      ),
      ),
    );
  }
}


class ContainerBody extends StatelessWidget {
  //const ContainerBody({Key? key}) : super(key: key);
  //final MyGetx counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyGetx>(
        init: MyGetx(),
        builder: (controller) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${controller.count}"),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Get.to(Second());
                }, child: Text("Go To Next Screen")),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Get.showSnackbar(
                    GetBar(
                      title: "Snack Bar",
                      message: "This is message to show Thank you",
                      isDismissible: true,
                      duration: Duration(seconds: 1),
                      snackPosition: SnackPosition.TOP,
                      dismissDirection: SnackDismissDirection.VERTICAL,

                    ),
                      );
                }, child: Text("Show Snack Bar")),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){
                  Get.defaultDialog(
                    title: "Alert Box",
                    content: Text("This is AlertBox"),
                    
                  );
                }, child: Text("Show Alert Dialog Box")),
              ],
            ),
          );
        });
  }
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Second Screen"),
    );
  }
}
