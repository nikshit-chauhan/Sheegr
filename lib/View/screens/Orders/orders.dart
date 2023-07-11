import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Resources/Colors.dart';
import '../../../Resources/fontstyle.dart';

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
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              // shape: ShapeBorder(),
              elevation: 2,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
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
                      trailing: const Row(
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
                  const AutoSizeText("3 items | online payment"),
                  const AutoSizeText("Placed on: Tue 17th Jan 2023 - 10:00am"),
                  const Row(
                    children: [
                      AutoSizeText(
                        "cancel order",
                        style: TextStyle(color: Colors.red),
                      ),
                      Row(
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
                    ],
                  ),
                ],
              ),
            )));
  }
}
