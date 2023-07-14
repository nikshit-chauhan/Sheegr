// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../Resources/fontstyle.dart';

class DrawerTiles extends StatelessWidget {
  DrawerTiles(
      {super.key,
      required this.image,
      required this.tileTitle,
      required this.onTap});
  String image;
  String tileTitle;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(
            image,
            height: 25,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        title: Text(
          tileTitle,
          style: AppFontStyle.flexibleFontStyle(
              fontSize: 13, fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 17,
        ),
      ),
    );
  }
}
