// import 'dart:io';
// import 'dart:js';

// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Colors.dart';
import 'package:sheegr/Utils/Widgets/indernet_connection_widget.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:getwidget/getwidget.dart';

import '../../../Controller/home_page_controller.dart';
import '../../../Resources/New_textfield.dart';
import '../../../Resources/fontstyle.dart';
import '../Account/account.dart';
import '../Categories List/categories_list.dart';
import '../ItemInfo/iteminfo.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Home({super.key});

  // final ConnectionManagerController _controller =
  //     Get.find<ConnectionManagerController>();

  Connectivity connectivity = Connectivity();

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.109,
          child: BottomNavigationBar(
            elevation: 20,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            unselectedItemColor: Colors.black.withOpacity(0.5),
            selectedItemColor: colorPrimary,
            unselectedLabelStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
                fontSize: 12),
            selectedLabelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Image.asset("lib/Assets/Images/notifylogo.png",
                        height: 34,
                        color: landingPageController.tabIndex.value == 0
                            ? colorPrimary
                            : Colors.black.withOpacity(0.5))),
                label: 'Home',
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Image.asset("lib/Assets/Images/categories.png",
                        height: 34,
                        color: landingPageController.tabIndex.value == 1
                            ? colorPrimary
                            : Colors.black.withOpacity(0.5))),
                label: 'Categories',
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Image.asset("lib/Assets/Images/wishlist.png",
                        height: 34,
                        color: landingPageController.tabIndex.value == 2
                            ? colorPrimary
                            : Colors.black.withOpacity(0.5))),
                label: 'Wishlist',
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Image.asset("lib/Assets/Images/shoppingCart.png",
                        height: 34,
                        color: landingPageController.tabIndex.value == 3
                            ? colorPrimary
                            : Colors.black.withOpacity(0.5))),
                label: 'Cart',
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Image.asset("lib/Assets/Images/Account2.png",
                        height: 34,
                        color: landingPageController.tabIndex.value == 4
                            ? colorPrimary
                            : Colors.black.withOpacity(0.5))),
                label: 'Account',
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ],
          ),
        )));
  }

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

  AppBarWidget(BuildContext context, int currentIndex) {
    if (currentIndex != 0) {
      return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(),
      );
    }
    return AppBar(
      bottom: preferredSizedWidget(),
      leadingWidth: 150,
      // centerTitle: false,
      leading: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Image.asset(
                "lib/Assets/Images/location_new.png",
                height: 27,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                color: Colors.white,
              ),
              AutoSizeText(
                'Paragoan',
                style: AppFontStyle.flexibleFontStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontColor: const Color.fromARGB(255, 255, 255, 255)),
                minFontSize: 10,
                maxFontSize: 18,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
              Image.asset(
                "lib/Assets/Images/downwhite.png",
                height: 25,
              )
            ],
          )),
      // title: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     AutoSizeText(
      //       'Paragoan',
      //       style: AppFontStyle.flexibleFontStyle(
      //           fontWeight: FontWeight.w500,
      //           fontSize: 18,
      //           fontColor: const Color.fromARGB(255, 255, 255, 255)),
      //       minFontSize: 10,
      //       maxFontSize: 18,
      //       overflow: TextOverflow.ellipsis,
      //       textAlign: TextAlign.right,
      //     ),
      //     Image.asset(
      //       "lib/Assets/Images/downwhite.png",
      //       height: 25,

      //     )
      //   ],
      // ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "lib/Assets/Images/store1.png",
              height: 24,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              color: Colors.white,
              // width: 40,
            ),
            const SizedBox(width: 8),
            AutoSizeText(
              'Abbigere',
              style: AppFontStyle.flexibleFontStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontColor: const Color.fromARGB(255, 255, 255, 255)),
              minFontSize: 10,
              maxFontSize: 18,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
            ),
            Image.asset(
              "lib/Assets/Images/downwhite.png",
              height: 25,
            ),

            // Text("Location rjkerk;ger"),

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

  // Widget cardWidget1() {
  //   return SizedBox(
  //     height: MediaQuery.of(context).size.height * 0.1,
  //     child: ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         itemCount: 10,
  //         itemBuilder: (BuildContext context, int index) {
  //           return GestureDetector(
  //               onTap: () {
  //                 Get.to(
  //                   () => DetailedInformation(),
  //                   transition: Transition.rightToLeft,
  //                   duration: const Duration(milliseconds: 600),
  //                 );
  //               },
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child:
  //                     CategoryButton(icon: Icons.fastfood, label: 'Fast Food'),
  //               ));
  //         }),
  //   );
  // }

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

  SingleChildScrollView homwLandingScreen(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    ));
  }

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController =
        Get.put(HomePageController(), permanent: true);
    return Obx(
      () => Scaffold(
        key: _scaffoldKey,
        appBar: homePageController.tabIndex.value == 0
            ? AppBarWidget(context, homePageController.tabIndex.value)
            : null,
        bottomNavigationBar:
            buildBottomNavigationMenu(context, homePageController),
        body: StreamBuilder<ConnectivityResult>(
            stream: connectivity.onConnectivityChanged,
            builder: (_, snapshot) {
              return InternetConnectionWidget(
                snapshot: snapshot,
                widget: IndexedStack(
                  index: homePageController.tabIndex.value,
                  children: [
                    homwLandingScreen(context),
                    const CategoriesList(),
                    const CategoriesList(),
                    const CategoriesList(),
                    const Account()
                  ],
                ),
              );
            }),
      ),
    );
  }
}
