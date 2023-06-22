// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../Resources/fontstyle.dart';


class DrawerTiles extends StatelessWidget {
    DrawerTiles(
      {super.key,
      required this.icon,
      required this.tileTitle,
      required this.onTap});
  IconData icon;
  String tileTitle;
  Function() onTap;     
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent, 
        child: Icon(
          icon,
          size: 27,
          color: Color.fromARGB(255, 0, 0, 0), 
        ),
      ),
      title: GestureDetector(
        onTap: onTap,
        child: Text(tileTitle,style: AppFontStyle.
                             flexibleFontStyle(fontSize: 13,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
