import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Strings.dart';

import '../../../Resources/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  final String sheegr_title = "Sheegr Seafoods and Logistics Pvt Ltd";
  final String sheegr_about =
      "Sheegr is a 600 crore air cargo logistic project that will collect seafood from the nearest harbor and ensure speedy delivery of seafood for every person to enjoy the fresh taste.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          Strings.aboutus,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              sheegr_title,
              style: const TextStyle(
                  color: colorPrimary,
                  fontFamily: "Quicksand-Bold",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              sheegr_about,
              style: const TextStyle(
                fontFamily: "Quicksand-Regular",
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
