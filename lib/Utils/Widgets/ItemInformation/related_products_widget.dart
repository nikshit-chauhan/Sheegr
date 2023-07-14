import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../Resources/Colors.dart';
import '../../../Resources/fontstyle.dart';

class RelatedProductsWidget extends StatelessWidget {
  const RelatedProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 310,
      height: MediaQuery.of(context).size.height * 0.37,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              // height: 110,
              // width: 260,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Card(
                  elevation: 4,
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Image.asset("lib/Assets/Images/fish1.png"),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "lib/Assets/Images/wishlist.png",
                              height: 30,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(6),
                                    border:
                                        Border.all(color: Colors.transparent)),
                                child: const Center(
                                  child: AutoSizeText(
                                    '25% OFF',
                                    minFontSize: 6,
                                    maxFontSize: 15,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: AutoSizeText(
                            "Yellow Fin Tuna",
                            minFontSize: 10,
                            maxFontSize: 20,
                            style: AppFontStyle.flexibleFontStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                "₹ 223",
                                minFontSize: 10,
                                maxFontSize: 20,
                                style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 20),
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
                                    'Add',
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
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ])),
            ),
          );
        },
      ),
    );
  }
}
