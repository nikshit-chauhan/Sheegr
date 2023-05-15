import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String route = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = '';
  String otp = '';

  void _verifyOtp() {
    //verify OTP and navigate to next screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'Login page',
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
