import 'package:flutter/material.dart';
import 'package:food_app/Controller/controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginScreenController loginScreenController = Get.find();

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    return Scaffold(
      backgroundColor:Colors.grey,
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height*0.3,
            width: mediaQuery.size.width*1,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15),
                topRight: Radius.circular(15)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Form(
                    key: loginScreenController.key1,
                      child: Column(
                        children: [
                          TextFormField(
                           controller: loginScreenController.emailcontroller,
                            decoration: InputDecoration(
                                   hintText: "helloww Worlds ",
                              border: InputBorder.none
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
             
            ),
          )
        ],
      ),
    );
  }
}
