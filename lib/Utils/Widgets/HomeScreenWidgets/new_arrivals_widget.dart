import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../Resources/Colors.dart';
import '../../../Resources/fontstyle.dart';

class NewArrivalsWidget extends StatelessWidget {
  const NewArrivalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 310,
      height: MediaQuery.of(context).size.height * 0.4,

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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("lib/Assets/Images/item1.png",
                            fit: BoxFit.fill),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: AutoSizeText(
                            "Yellow Fin Tuna fdgg",
                            minFontSize: 10,
                            maxFontSize: 20,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppFontStyle.flexibleFontStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: AutoSizeText(
                            "Net: 300g",
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppFontStyle.flexibleFontStyle(fontSize: 15),
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
                                    color: Color.fromARGB(255, 255, 255, 255)
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
