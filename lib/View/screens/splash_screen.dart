import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/View/screens/Login/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(LoginScreen());
    });
    return Scaffold(
      body: Center(
          child: Image.asset(
        "lib/Assets/Images/logoone.png",
        width: 250,
        height: 250,
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Image.asset(
        "lib/Assets/Images/kfdcIcon.png",
        width: MediaQuery.of(context).size.width * .44,
        height: MediaQuery.of(context).size.height * .15,
      ),
    );
  }
}
