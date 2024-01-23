
import 'package:food_app/Binding/binding.dart';
import 'package:food_app/Pages/home_screen.dart';
import 'package:food_app/Routs/routs.dart';
import 'package:get/get.dart';
class AppPage {

  static String INITIALROUTE =Routs.HOMEROUTE;

  static final pages = [

    GetPage(
        name: Routs.HOMEROUTE,
        page: ()=> HomeScreen(),
        binding: HomeScreenBinding()
    )
  ];
}