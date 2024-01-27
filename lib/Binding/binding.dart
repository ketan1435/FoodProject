

import 'package:food_app/Controller/controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

class RegisterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterScreenController());
  }
}

class LoginScreenBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());

  }
}

class SplashScreenBinding extends Bindings
{
  @override
  void dependencies() {
   Get.lazyPut(() => SplashScreenController());
  }
}