import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/Colors.dart';
import '../../../Resources/fontstyle.dart';
import '../../../Utils/Widgets/CommonWidgets/fluid_button.dart';
import '../OrderDetails/order_details.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Orders",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                // shape: ShapeBorder(),
                elevation: 2,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: grey2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          // 'assets/icons/bg_1.png',
                          'lib/Assets/Images/clock.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                        title: const AutoSizeText("Order id: 123456789"),

                        // isThreeLine: true,
                        subtitle: const AutoSizeText("Total Amount : \$221.00"),
                        trailing: const SizedBox(
                          width: 80,
                          child: Row(
                            children: [
                              Icon(
                                Icons.cancel,
                                color: Colors.red,
                                size: 15,
                              ),
                              AutoSizeText("Pending")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: AutoSizeText("3 items | online payment"),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    const DottedLine(
                      dashColor: grey1,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: AutoSizeText(
                          "Placed on: Tue 17th Jan 2023 - 10:00am"),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    const DottedLine(
                      dashColor: grey1,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.015,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: ((context) => AlertDialog(
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Cancel Order",
                                            style:
                                                AppFontStyle.flexibleFontStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.02,
                                          ),
                                          Text(
                                            "You are about to cancel this order. You cannot undo this action.",
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            // maxFontSize: 15,
                                            // minFontSize: 8,
                                            style:
                                                AppFontStyle.flexibleFontStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.01,
                                          ),
                                          Text(
                                            "Are you sure you want to continue?",
                                            textAlign: TextAlign.center,
                                            // maxFontSize: 18,
                                            // minFontSize: 8,
                                            style:
                                                AppFontStyle.flexibleFontStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.01,
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: FluidButton(
                                                buttonName: "No",
                                                onPressed: () {},
                                                // buttonTextColor: colorPrimary,
                                                // buttonColor: Colors.transparent,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: FluidButton(
                                                  buttonName: "Yes, Cancel it",
                                                  onPressed: () {}),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              );
                            },
                            child: const AutoSizeText(
                              "cancel order",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const OrderDetails());
                            },
                            child: const Row(
                              children: [
                                AutoSizeText(
                                  "View Details",
                                  style: TextStyle(color: Colors.green),
                                ),
                                Icon(
                                  Icons.arrow_right_sharp,
                                  color: Colors.green,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
