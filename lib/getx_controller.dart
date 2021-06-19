import 'package:get/get.dart';
import 'package:learngetx/user.dart';

class UserController extends GetxController {
  final myUser = User(name: "Ahmed", age: 20).obs;
  ToUpperCase() {
    myUser.update((myUser) {
      myUser!.name = myUser.name.toUpperCase();
      print(myUser.name);
    });
  }

  increaseAge() {
    myUser.value.age = myUser.value.age + 1;
    print(myUser.value.age);
  }
}
