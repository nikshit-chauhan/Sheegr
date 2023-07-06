import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/Colors.dart';

class TermsAndConditon extends StatelessWidget {
  const TermsAndConditon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Terms And Condition",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
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
