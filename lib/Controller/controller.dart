import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Pages/login_screen.dart';

class HomeScreenController extends GetxController
{


}
class RegisterScreenController extends GetxController
{

}


class LoginScreenController extends GetxController
{
  final key1 = GlobalKey<FormState>();

  TextEditingController emailcontroller = TextEditingController();

}

class SplashScreenController extends GetxController
{

  RxBool animate = false.obs;
  Future Startanimation() async{
    await Future.delayed(Duration(milliseconds: 2000));
    animate.value =true;
    await Future.delayed(Duration(milliseconds: 4000));
    Get.toNamed("/loginroute");
  }

}