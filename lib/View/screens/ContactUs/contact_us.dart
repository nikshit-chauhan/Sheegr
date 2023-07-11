import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Strings.dart';

import '../../../Resources/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          Strings.contactus,
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
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.forfeedback,
                  style: TextStyle(
                      color: colorPrimary,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Quicksand-Regular",
                      fontSize: 16),
                ),
                const SizedBox(height: 15),
                InkWell(
                  //TODO:Implement onTap here
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.callatus,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Quicksand-Bold",
                            fontSize: 17),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "+91 1234567890",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Quicksand-Regular",
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  //TODO:Implement onTap here
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.emailusat,
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Quicksand-Bold",
                            fontSize: 17),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "customercare@sheegr.com",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontFamily: "Quicksand-Regular",
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 6,
            color: grey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.companyoffice,
                  style: TextStyle(
                      color: colorPrimary,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Quicksand-Regular",
                      fontSize: 16),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        "lib/Assets/Images/location1.png",
                      ),
                      color: colorPrimary,
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 95,
                      width: 285,
                      child: Text(
                        "21, 1st Cross, Shantha Complex 1st Main, Poojari Layout 3rd Cross Rd, next to NETRA EYE HOSPITAL, RMV 2nd Stage, Ashwath Nagar, Armane Nagar, Bengaluru, Karnataka 560094.",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontFamily: "Quicksand-Regular",
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
