import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String route = "/splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInBack),
    );

    _animationController.forward();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
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
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              Image.asset(
                "lib/Assets/Images/logoone.png",
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 150,
              ),
              Image.asset(
                "lib/Assets/Images/kfdcIcon.png",
                width: MediaQuery.of(context).size.width * .44,
                height: MediaQuery.of(context).size.height * .15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
