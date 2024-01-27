import 'package:food_app/Binding/binding.dart';
import 'package:food_app/Pages/home_screen.dart';
import 'package:food_app/Pages/login_screen.dart';
import 'package:food_app/Routs/routs.dart';
import 'package:get/get.dart';

import '../Pages/registration.dart';

class AppPage {

  static String INITIALROUTE = Routs.LOGINROUTE;

  static final pages = [
    GetPage(
        name: Routs.HOMEROUTE,
        page: ()=> HomeScreen(),
        binding: HomeScreenBinding()
    ),
    GetPage(
        name: Routs.LOGINROUTE,
        page: ()=> LoginScreen(),
        binding: LoginScreenBinding()
    ),
    GetPage(
        name: Routs.REGISTERROUT,
        page: ()=>  ResistrationScreen(),
        binding: RegisterScreenBinding()
    ),
    GetPage(
        name: Routs.REGISTERROUT,
        page: ()=>  ResistrationScreen(),
        binding: RegisterScreenBinding()
    ),


  ];
}