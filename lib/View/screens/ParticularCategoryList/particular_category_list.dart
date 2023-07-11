// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/quantity_controller.dart';
import '../../../Resources/Colors.dart';
import '../../../Resources/fontstyle.dart';

class ParticularCategoryList extends StatelessWidget {
  ParticularCategoryList({super.key});
  QuantityController quantity = Get.put(QuantityController());
  //  int quantity = 0;
  // bool _isShow = false;

  //!  add to cart yet to develop ..Excluded as of now
  // Widget addToCardWidget() {
  //   return Visibility(
  //     visible: _isShow,
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         IconButton(
  //           icon: const Icon(Icons.remove),
  //           onPressed: quantity.decrementQuantity,
  //           color: const Color(0xffE40045),
  //         ),
  //         Text(
  //           quantity.toString(),
  //           style: const TextStyle(
  //               color: Color(0xffE40045),
  //               fontSize: 20,
  //               fontWeight: FontWeight.bold),
  //         ),
  //         IconButton(
  //           icon: const Icon(Icons.add),
  //           onPressed: quantity.increaseQuantity,
  //           color: const Color(0xffE40045),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Category Name",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Get.back();
              }),
          backgroundColor: colorPrimary,
          leadingWidth: 40,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: false,
            // physics: const NeverScrollableScrollPhysics(),
            children: List.generate(7, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("lib/Assets/Images/fish1.png"),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height * 0.02,
                          // ),
                          // Text("Yellow Fin Tuna",style: AppFontStyle.flexibleFontStyle(fontSize:20 ),),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: AutoSizeText(
                              "Yellow Fin Tuna",
                              minFontSize: 10,
                              maxFontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  AppFontStyle.flexibleFontStyle(fontSize: 20),
                            ),
                          ),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height * 0.02,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                "₹ 223",
                                minFontSize: 10,
                                maxFontSize: 17,
                                style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 17),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black.withOpacity(0.2))),
                                child: const Center(
                                  child: AutoSizeText(
                                    'select',
                                    minFontSize: 10,
                                    maxFontSize: 17,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: colorPrimary,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ])),
              );
            })));
  }
}
