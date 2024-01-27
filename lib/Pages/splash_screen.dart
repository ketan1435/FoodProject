import 'package:flutter/material.dart';
import 'package:food_app/Controller/controller.dart';
import 'package:food_app/Utils/colors.dart';
import 'package:food_app/Utils/images.dart';
import 'package:food_app/Utils/sizes.dart';
import 'package:food_app/Utils/texts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashScreenController splashScreenController = Get.find();
  @override
  Widget build(BuildContext context) {
    splashScreenController.Startanimation();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Obx(
               ()=> AnimatedPositioned(
              duration: Duration(seconds: 1),
                top: splashScreenController.animate.value ? 10:-30,
                  left:splashScreenController.animate.value ? 10:-30,
                  child:Image(image: AssetImage(kLogoIcon))
              ),
          ),
          Obx(
            ()=> AnimatedPositioned(
             duration: Duration(seconds: 1),
              top: 220,
                left:splashScreenController.animate.value? kDefaultSize.toDouble():-80,
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: splashScreenController.animate.value ?1:0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(kAppName, style: Theme.of(context).textTheme.headline6,),
                      Text(kAppTagline , style:  Theme.of(context).textTheme.headline4,)
                    ],
                  ),
                )),
          ),
          Obx(
            ()=>  AnimatedPositioned(
              duration: Duration(seconds: 1),
              bottom: 30,
                left: 60,
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity:splashScreenController.animate.value ?1 :0 ,
                  child: Image(
                      image: AssetImage(
                          kLogoImage),height: 400,width: 350,),
                )),
          ),
          Obx(
             ()=> AnimatedPositioned(
              duration: Duration(seconds: 1),
             bottom: 20,
                left: 430,
                child: AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity:splashScreenController.animate.value ?1 :0 ,
                  child: Container(
                    height: kSplashContainerSize.toDouble(),
                    width: kSplashContainerSize.toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                     color: kPrimaryColor,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}