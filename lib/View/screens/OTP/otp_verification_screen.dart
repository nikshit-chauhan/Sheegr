import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Colors.dart';
import 'package:sheegr/View/screens/Profile/profile_screen.dart';

import '../../../Resources/Strings.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Strings.login,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 150,
              color: colorPrimary,
              child: const Center(
                  child: Text(
                'OTP VERIFICATIN',
                style: TextStyle(fontSize: 20),
              )),
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () => Get.offAll(ProfileScreen()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
