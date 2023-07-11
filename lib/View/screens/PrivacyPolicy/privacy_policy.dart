import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});
  final String conditions =
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.";

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Refund Policy",
                style: TextStyle(
                    color: colorPrimary,
                    fontFamily: "Quicksand-Bold",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                conditions,
                style: const TextStyle(
                  fontFamily: "Quicksand-Regular",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Policies Conditions",
                style: TextStyle(
                    color: colorPrimary,
                    fontFamily: "Quicksand-Bold",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                conditions,
                style: const TextStyle(
                  fontFamily: "Quicksand-Regular",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                conditions,
                style: const TextStyle(
                  fontFamily: "Quicksand-Regular",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                conditions,
                style: const TextStyle(
                  fontFamily: "Quicksand-Regular",
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
