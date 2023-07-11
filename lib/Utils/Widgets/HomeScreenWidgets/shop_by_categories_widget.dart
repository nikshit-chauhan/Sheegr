// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ShopByCategoriesWidget extends StatelessWidget {
  const ShopByCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(14, (index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 33,
                  // minRadius: 20,
                  // maxRadius: 33,
                  // backgroundColor: Colors.transparent,
                  // foregroundColor: Colors.transparent,
                  // backgroundImage:
                  //     AssetImage('lib/Assets/Images/freshRohu.png'),
                  foregroundImage:
                      AssetImage("lib/Assets/Images/friedfish.png"),
                ),
                AutoSizeText(
                  "Marine Water Fish",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        }));
  }
}
