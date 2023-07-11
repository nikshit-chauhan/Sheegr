import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Privacy Policy",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Quicksand-SemiBold",
                fontSize: 18),
          ),
          centerTitle: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () => Get.back(),
          ),
          backgroundColor: colorPrimary,
          leadingWidth: 40,
        ),
        body: const Column(
          children: [
            Spacer(),
          ],
        ));
  }
}
