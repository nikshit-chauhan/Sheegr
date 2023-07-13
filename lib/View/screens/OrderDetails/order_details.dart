import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/fontstyle.dart';
import 'package:sheegr/Utils/Widgets/CommonWidgets/fluid_button.dart';

import '../../../Resources/Colors.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Orders Details",
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
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              ListTile(
                leading: AutoSizeText(
                  "Order ID: 1234567890",
                  maxFontSize: 16,
                  minFontSize: 8,
                  style: AppFontStyle.flexibleFontStyle(fontSize: 16),
                ),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 18,
                      ),
                      AutoSizeText(
                        "Pending",
                        maxFontSize: 16,
                        minFontSize: 8,
                        style: AppFontStyle.flexibleFontStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: AutoSizeText(
                  "Placed on: Tue, 17th Jan 2023 - 10:00am",
                  maxFontSize: 16,
                  minFontSize: 8,
                  style: AppFontStyle.flexibleFontStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const Divider(
                thickness: 10,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // primary: false,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            child: AutoSizeText(
                              "Sword Fish - Curry Cut  (May include head pieces)",
                              maxFontSize: 16,
                              minFontSize: 8,
                              maxLines: 2,
                              style:
                                  AppFontStyle.flexibleFontStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              "Net: 500g  |  Qty: 1",
                              maxFontSize: 16,
                              minFontSize: 8,
                              style:
                                  AppFontStyle.flexibleFontStyle(fontSize: 16),
                            ),
                            AutoSizeText(
                              "₹ 123.00",
                              maxFontSize: 16,
                              minFontSize: 8,
                              style: AppFontStyle.flexibleFontStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontColor: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 15,
                        endIndent: 15,
                        color: Colors.black26,
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      "Item Subtotal: ",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    AutoSizeText(
                      "₹ 123.00",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      "Delivery Charges: ",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    AutoSizeText(
                      "₹ 123.00",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      "GST & Taxes: ",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    AutoSizeText(
                      "₹ 123.00",
                      maxFontSize: 18,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      "Total  Amount : ",
                      maxFontSize: 20,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontColor: colorPrimary),
                    ),
                    AutoSizeText(
                      "₹ 2344.00",
                      maxFontSize: 20,
                      minFontSize: 8,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontColor: colorPrimary),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              const Divider(
                thickness: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ListTile(
                  title: AutoSizeText(
                    "Payment Details",
                    maxFontSize: 20,
                    minFontSize: 8,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: AutoSizeText(
                    "Online Payment",
                    maxFontSize: 17,
                    minFontSize: 8,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ListTile(
                  title: AutoSizeText(
                    "Phone Number",
                    maxFontSize: 20,
                    minFontSize: 8,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: AutoSizeText(
                    "+91 1234567890",
                    maxFontSize: 17,
                    minFontSize: 8,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ListTile(
                  title: AutoSizeText(
                    "Deliver to",
                    maxFontSize: 20,
                    minFontSize: 8,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: AutoSizeText(
                    "Restaurant1, ieiyebciwyegfwyebieiyefgwyegfiebc eggcg34bcaygf",
                    maxFontSize: 17,
                    minFontSize: 8,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppFontStyle.flexibleFontStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: ((context) => AlertDialog(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Cancel Order",
                                  style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.02,
                                ),
                                Text(
                                  "You are about to cancel this order. You cannot undo this action.",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  // maxFontSize: 15,
                                  // minFontSize: 8,
                                  style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.01,
                                ),
                                Text(
                                  "Are you sure you want to continue?",
                                  // maxFontSize: 18,
                                  // minFontSize: 8,
                                  style: AppFontStyle.flexibleFontStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.01,
                                ),
                              ],
                            ),
                            actions: [
                              Row(children: [
                                Expanded(
                                    child: FluidButton(
                                  buttonName: "No",
                                  onPressed: () {},
                                  buttonTextColor: colorPrimary,
                                  buttonColor: Colors.transparent,
                                )),
                                Expanded(
                                  flex: 2,
                                    child: FluidButton(
                                        buttonName: "Yes, Cancel it",
                                        onPressed: () {}))
                              ])
                            ],
                          )),
                    );
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(border: Border.all(color: lightGrey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          "Cancel Order",
                          maxFontSize: 18,
                          minFontSize: 8,
                          style: AppFontStyle.flexibleFontStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontColor: colorPrimary),
                        ),
                        AutoSizeText(
                          "You can cancel this order within the next 05:00 minutes!",
                          maxFontSize: 13,
                          minFontSize: 6,
                          style: AppFontStyle.flexibleFontStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
