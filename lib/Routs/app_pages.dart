import 'package:food_app/Binding/binding.dart';
import 'package:food_app/Pages/home_screen.dart';
<<<<<<< HEAD
import 'package:food_app/Pages/registration.dart';
=======
import 'package:food_app/Pages/login_screen.dart';
>>>>>>> c1d723e5ca7d55ddd81dec0d3b32cb16a3a87bdf
import 'package:food_app/Routs/routs.dart';
import 'package:get/get.dart';

class AppPage {

  static String INITIALROUTE = Routs.LOGINROUTE;

  static final pages = [
    GetPage(
        name: Routs.HOMEROUTE,
        page: ()=> HomeScreen(),
        binding: HomeScreenBinding()
    ),
    GetPage(
<<<<<<< HEAD
        name: Routs.REGISTERROUT,
        page: ()=>SignUppage(),
        binding: RegisterScreenBinding())
=======
        name: Routs.LOGINROUTE,
        page: ()=> LoginScreen(),
        binding: LoginScreenBinding()
    ),
>>>>>>> c1d723e5ca7d55ddd81dec0d3b32cb16a3a87bdf
  ];
}