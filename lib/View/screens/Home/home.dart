// import 'dart:io';
// import 'dart:js';

// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/colors.dart';

import '../../../Controller/home_page_controller.dart';
import '../../../Resources/new_textfield.dart';
import '../../../Resources/fontstyle.dart';
import '../../../Utils/Widgets/HomeScreenWidgets/carousel_wideget.dart';
import '../../../Utils/Widgets/HomeScreenWidgets/new_arrivals_widget.dart';
import '../../../Utils/Widgets/HomeScreenWidgets/shop_by_categories_widget.dart';
import '../../../Utils/Widgets/HomeScreenWidgets/trending_products_widget.dart';
import '../../../Utils/Widgets/InternetWidgets/indernet_connection_widget.dart';
import '../Account/account.dart';
import '../Categories List/categories_list.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Home({super.key});

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

  // ignore: non_constant_identifier_names
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
        child: Row(
          children: [
            Expanded(
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
            SizedBox(
              height: 75,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Image.asset("lib/Assets/Images/bell.png"),
              )),
            )
          ],
        ),
      ),
    );
  }

  int dotValue = 0;

  SingleChildScrollView homeLandingScreen(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CarouselWidget(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: AutoSizeText(
            'Trending Products',
            style: AppFontStyle.flexibleFontStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontColor: Colors.black),
            minFontSize: 14,
            maxFontSize: 20,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const TrendingProductsWidget(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                'Shop By Categories',
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
                      Icons.keyboard_arrow_right_sharp,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        // cardWidget2(),
        const ShopByCategoriesWidget(),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: AutoSizeText(
            'New Arrivals',
            style: AppFontStyle.flexibleFontStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontColor: Colors.black),
            minFontSize: 14,
            maxFontSize: 20,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),

        const NewArrivalsWidget(),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "lib/Assets/Images/subslider.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              "lib/Assets/Images/subsliderone.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "lib/Assets/Images/subSlider3.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),

        // todaysoffer()
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
                    homeLandingScreen(context),
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
