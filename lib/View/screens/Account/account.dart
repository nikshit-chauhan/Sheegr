import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/colors.dart';
import '../../../Resources/fontstyle.dart';
import '../../../Utils/Widgets/CommonWidgets/drawertile.dart';
import '../AboutUs/about_us.dart';
import '../ContactUs/contact_us.dart';
import '../FAQ/faq.dart';
import '../PrivacyPolicy/privacy_policy.dart';
import '../Profile/profile_screen.dart';
import '../TermsAndCondition/terms_and_condition.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "My Account",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () => Get.back(),
          ),
          backgroundColor: colorPrimary,
          leadingWidth: 40,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),

                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: AutoSizeText("Restaurant1",
                                minFontSize: 10,
                                maxFontSize: 30,
                                style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppFontStyle.regularFont),
                                // style: const TextStyle(
                                //     fontSize: 15, fontWeight: FontWeight.w700),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2),
                          ),
                          Row(
                            children: [
                              AutoSizeText("+91-6265640048",
                                  minFontSize: 8,
                                  maxFontSize: 16,
                                  style: AppFontStyle.flexibleFontStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  // style: const TextStyle(
                                  //     fontSize: 15, fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis),
                              const Text(
                                " | ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 23),
                              ),
                              AutoSizeText("restaurant@gmail.com",
                                  minFontSize: 8,
                                  maxFontSize: 16,
                                  style: AppFontStyle.flexibleFontStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  // style: const TextStyle(
                                  //     fontSize: 15, fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ],
                      ),
                      // const Spacer(flex: 9),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Column(
              children: [
                // const Spacer(),
                const SizedBox(
                  height: 5,
                ),
                DrawerTiles(
                    icon: Icons.trolley,
                    tileTitle: 'Orders',
                    onTap: () {
                      //Get.to(() => ProfileScreen());
                    }),
                DrawerTiles(
                    icon: Icons.person,
                    tileTitle: 'My Profile',
                    onTap: () {
                      Get.to(() => ProfileScreen());
                    }),
                DrawerTiles(
                    icon: Icons.abc,
                    tileTitle: 'Saved Addresses',
                    onTap: () {
                      //Get.to(() => ProfileScreen());
                    }),
                DrawerTiles(
                    icon: Icons.abc,
                    tileTitle: 'Wishlist',
                    onTap: () {
                      //Get.to(() => ProfileScreen());
                    }),
                DrawerTiles(
                    icon: Icons.notifications,
                    tileTitle: 'Notifications',
                    onTap: () {
                      //Get.to(() => ProfileScreen());
                    }),
                DrawerTiles(
                    icon: Icons.person_2,
                    tileTitle: 'About Us',
                    onTap: () {
                      Get.to(() => const AboutUs());
                    }),
                DrawerTiles(
                    icon: Icons.call,
                    tileTitle: 'Contact Us',
                    onTap: () {
                      Get.to(() => const ContactUs());
                    }),
                DrawerTiles(
                    icon: Icons.question_answer_outlined,
                    tileTitle: 'FAQ',
                    onTap: () {
                      Get.to(() => const FAQ());
                    }),
                DrawerTiles(
                    icon: Icons.notes,
                    tileTitle: 'Terms And Conditions',
                    onTap: () {
                      Get.to(() => const TermsAndConditon());
                    }),
                //const Spacer(),
                DrawerTiles(
                    icon: Icons.privacy_tip_outlined,
                    tileTitle: 'Privacy Policy',
                    onTap: () {
                      Get.to(() => const PrivacyPolicy());
                    }),

                // const Spacer(
                //   flex: 20,
                // ),
                DrawerTiles(
                    icon: Icons.logout_sharp,
                    tileTitle: 'logout',
                    onTap: () {}),
                // const Spacer()
              ],
            ))
          ],
        ));
  }
}
