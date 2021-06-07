
import 'package:get/get.dart';

class MyGetx extends GetxController{
    var count =0.obs;

    void  getCount(){
      count++;
      update();
      print(count);
    }



}