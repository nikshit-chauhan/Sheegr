// import 'dart:io';
// import 'dart:js';

// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Colors.dart';
import 'package:sheegr/View/screens/AboutUs/about_us.dart';
import 'package:sheegr/View/screens/ContactUs/contact_us.dart';
import 'package:sheegr/View/screens/FAQ/faq.dart';
import 'package:sheegr/View/screens/PrivacyPolicy/privacy_policy.dart';
import 'package:sheegr/View/screens/TermsAndCondition/terms_and_condition.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:getwidget/getwidget.dart';

import '../../../Resources/New_textfield.dart';
import '../../../Resources/fontstyle.dart';
import '../../../Utils/Widgets/drawertile.dart';
import '../Categories List/categories_list.dart';
import '../ItemInfo/iteminfo.dart';
import '../Profile/profile_screen.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Home({super.key});

  // Future<bool> onWillPop() async {
  //   return (await showDialog(
  //         // context: context,
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text(
  //             'Are you sure?',
  //             style:
  //                 AppFontStyle.flexibleFontStyle(fontWeight: FontWeight.w700),
  //           ),
  //           content: Text('Do you want to exit the App',
  //               style: AppFontStyle.flexibleFontStyle()),
  //           actions: <Widget>[
  //             TextButton(
  //               onPressed: () => Navigator.of(context).pop(false),
  //               child: Text(
  //                 'No',
  //                 style: AppFontStyle.cotentTextStyle(),
  //               ),
  //             ),
  //             TextButton(
  //               onPressed: () => exit(0),
  //               child: Text('Yes', style: AppFontStyle.cotentTextStyle()),
  //             ),
  //           ],
  //         ),
  //       )) ??
  //       false;
  // }

  AppBarWidget(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  print("Drawer icon tapper");
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu,
                    size: 30, color: Color.fromARGB(255, 0, 0, 0)))),
      ),

      bottom: preferredSizedWidget(),
      actions: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: AutoSizeText(
                'Abbigere',
                style: AppFontStyle.flexibleFontStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontColor: Colors.black),
                minFontSize: 10,
                maxFontSize: 16,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(width: 15),
            // Text("Location rjkerk;ger"),
            const Icon(
              Icons.location_on,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(width: 15),
          ],
        ),
      ],
      // centerTitle: true,
      elevation: 0,
      // backgroundColor: Color.fromRGBO(254, 206, 38, 1),
      backgroundColor: colorPrimary,
    );
  }

  PreferredSizeWidget preferredSizedWidget() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          shadowColor: const Color(0xffE40045).withRed(200),
          color: Colors.white,
          child: ListTile(
            title: NewTextField(
              hintText: "Search for fishes",
            ),
            trailing: const Icon(
              Icons.search_sharp,
              color: Color(0xffE40045),
              size: 32,
            ),
          ),
        ),
      ),
    );
  }

  Widget drawerWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Container(
            color: const Color(0xffE40045),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const CircleAvatar(
                        backgroundColor: Colors.white54,
                        child: Icon(
                          Icons.person_3,
                          color: Colors.black,
                          size: 35,
                        ),
                        radius: 40,
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),

                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text("Chinmay Chauhan",
                                style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppFontStyle.regularFont),
                                // style: const TextStyle(
                                //     fontSize: 15, fontWeight: FontWeight.w700),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2),
                          ),
                          Text("+91-6265640048",
                              style: AppFontStyle.flexibleFontStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                              // style: const TextStyle(
                              //     fontSize: 15, fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      // const Spacer(flex: 9),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            const Spacer(),
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

            const Spacer(
              flex: 20,
            ),
            DrawerTiles(
                icon: Icons.logout_sharp, tileTitle: 'logout', onTap: () {}),
            const Spacer()
          ],
        ))
      ],
    );
  }

  Widget cardWidget2() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.to(
                const CategoriesList(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 600),
              );
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Hero(
                    tag: 'new1',
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)
                          // topLeft: Radius.circular(10.0),
                          // bottomLeft: Radius.circular(10.0),
                          ),
                      child: Image.asset(
                        "lib/Assets/Images/friedfish.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Center(
                      child: Text(
                        'Category Name',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  //! removed as of now (not required)

  // Widget carouselWidget(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10),
  //     child: SizedBox(
  //       height: MediaQuery.of(context).size.height * 0.3,
  //       width: MediaQuery.of(context).size.width,
  //       // decoration: BoxDecoration(
  //       //   borderRadius: BorderRadius.circular(10),
  //       // gradient: const LinearGradient(colors: [
  //       //   // ColorConstants.yellow,
  //       //   ColorConstants.primaryColor,
  //       //   Colors.white,
  //       //   ColorConstants.primaryColor,
  //       //   // ColorConstants.primaryColor,
  //       //   // ColorConstants.yellow,
  //       // ]),
  //       // ),
  //       child: Column(
  //         // mainAxisAlignment: MainAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         // crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           GFCarousel(
  //             // pagerSize: 10,
  //             autoPlay: true,
  //             autoPlayAnimationDuration: const Duration(seconds: 2),
  //             viewportFraction: 0.8,
  //             // aspectRatio: 2.0,
  //             enlargeMainPage: true,
  //             items: <Widget>[
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 10),
  //                 child: Container(
  //                   // shape: RoundedRectangleBorder(
  //                   //     borderRadius: BorderRadius.circular(10.0),
  //                   //   ),
  //                   decoration:
  //                       BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //                   child: Image.asset(
  //                    " lib\Assets\Images\demo.PNG",
  //                     fit: BoxFit.fill,
  //                     width: MediaQuery.of(context).size.width,
  //                     height: MediaQuery.of(context).size.height,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 10),
  //                 child: Container(
  //                   decoration:
  //                       BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //                   child: Image.asset(
  //                     " lib\Assets\Images\demo.PNG",
  //                     fit: BoxFit.fill,
  //                     width: MediaQuery.of(context).size.width,
  //                     height: MediaQuery.of(context).size.height,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 10),
  //                 child: Container(
  //                   decoration:
  //                       BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //                   child: Image.asset(
  //                     " lib\Assets\Images\demo.PNG",
  //                     fit: BoxFit.fill,
  //                     width: MediaQuery.of(context).size.width,
  //                     height: MediaQuery.of(context).size.height,
  //                   ),
  //                 ),
  //               ),
  //             ],
  //             onPageChanged: (index) {
  //               setState(() {
  //                 dotValue = index;
  //               });
  //             },
  //           ),
  //           SizedBox(
  //             child: DotsIndicator(
  //               dotsCount: 3,
  //               position: dotValue,
  //               decorator: const DotsDecorator(
  //                 color: Colors.black,
  //                 activeSize: Size.square(8),
  //                 activeColor: Color(0xffE40045),
  //                 spacing: EdgeInsets.all(2),
  //                 size: Size.square(5),
  //               ),
  //             ),
  //           ),
  //           // const Spacer(
  //           //   flex: 5,
  //           // ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget todaysoffer() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  () => ItemInfo(imagePath: "lib/Assets/Images/friedfish.png"),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 600),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // color: Colors.blueGrey,
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10),
                //     topRight: Radius.circular(10),
                //   ),
                // ),
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                        transitionOnUserGestures: true,
                        tag: 'image1',
                        child: Image.asset("lib/Assets/Images/friedfish.png")),
                    // Image.asset("assets/icons/logotwo.png"),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: ListTile(
                          title: const AutoSizeText("Fried Fish",
                              style: TextStyle(color: Colors.white)),
                          subtitle: AutoSizeText(
                            "cooking fish by fully immersing it in hot oil",
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                          trailing: const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
    );

    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start, children: [
    //   AutoSizeText(
    //     'Offer\'s Today !',
    //     style: AppFontStyle.flexibleFontStyle(
    //         fontWeight: FontWeight.w600, fontSize: 20, fontColor: Colors.black),
    //     minFontSize: 14,
    //     maxFontSize: 20,
    //     overflow: TextOverflow.ellipsis,
    //     textAlign: TextAlign.left,
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Container(
    //        decoration:
    //                     BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //       child: Card(
    //         clipBehavior: Clip.antiAliasWithSaveLayer,
    //                     semanticContainer: true,
    //         child: Image.asset(IconConstants.food))),
    //   )
    // ]);
  }

  int dotValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.75,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: drawerWidget(context),
      ),
      appBar: AppBarWidget(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Spacer(),

            // Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    'Categories',
                    style: AppFontStyle.flexibleFontStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontColor: Colors.black),
                    minFontSize: 14,
                    maxFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const CategoriesList(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 600),
                      );
                    },
                    child: Row(
                      children: [
                        AutoSizeText(
                          'View All',
                          style: AppFontStyle.flexibleFontStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              fontColor: Colors.black26),
                          minFontSize: 8,
                          maxFontSize: 13,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                        ),
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          size: 25,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            cardWidget2(),
            // Spacer(),
            // Card(
            //     elevation: 0,
            //     clipBehavior: Clip.antiAliasWithSaveLayer,
            //     semanticContainer: true,
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(
            //         color: Colors.transparent,
            //       ),
            //       borderRadius: BorderRadius.circular(0.0),
            //     ),
            //     color: Color(0xffE0E0E0),
            //     child: null
            //     // carouselWidget()
            //     ),
            // Spacer(),

            todaysoffer()
          ],
        ),
      ),
    );
  }
}
