import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQuery.size.height*0.2,
            width: mediaQuery.size.width*1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
