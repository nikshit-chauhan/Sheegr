import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/View/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  // late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // _animation = Tween<double>(begin: 0, end: 1).animate(
    //   CurvedAnimation(parent: _animationController, curve: Curves.easeInBack),
    // );

    _animationController.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(LoginScreen());
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
