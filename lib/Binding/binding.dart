

import 'package:food_app/Controller/controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

<<<<<<< HEAD
}
class RegisterScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterScreenController());
=======
class LoginScreenBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
>>>>>>> c1d723e5ca7d55ddd81dec0d3b32cb16a3a87bdf
  }
}