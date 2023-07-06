import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../../../Controller/carousel_controller.dart';

class CarouselWidget extends StatelessWidget {
  final CarouselController carouselController = Get.put(CarouselController());
  CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            // gradient: const LinearGradient(colors: [
            //   // ColorConstants.yellow,
            //   ColorConstants.primaryColor,
            //   Colors.white,
            //   ColorConstants.primaryColor,
            //   // ColorConstants.primaryColor,
            //   // ColorConstants.yellow,
            // ]),
            // ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GFCarousel(
                  // pagerSize: 10,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  viewportFraction: 1.0,
                  // aspectRatio: 2.0,
                  enlargeMainPage: true,
                  items: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10.0),
                        //   ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "lib/Assets/Images/slider.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "lib/Assets/Images/slider.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "lib/Assets/Images/slider.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "lib/Assets/Images/slider.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "lib/Assets/Images/slider.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  ],
                  onPageChanged: (index) {
                    carouselController.onCarouselPageChange(index);
                  },
                ),
                SizedBox(
                  child: DotsIndicator(
                    dotsCount: 5,
                    position: carouselController.currentCarouselIndex.value,
                    decorator: const DotsDecorator(
                      color: Colors.black,
                      activeSize: Size.square(8),
                      activeColor: Color(0xffE40045),
                      spacing: EdgeInsets.all(3),
                      size: Size.square(5),
                    ),
                  ),
                ),
                // const Spacer(
                //   flex: 5,
                // ),
              ],
            ),
          ),
        ));
  }
}
