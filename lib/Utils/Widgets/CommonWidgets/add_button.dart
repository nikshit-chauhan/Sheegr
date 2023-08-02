import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../Resources/Colors.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  AddButton({super.key, required this.onTap, required this.isShow});
  Function() onTap;
  bool isShow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.04,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black.withOpacity(0.2))),
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
      ),
    );
  }
}
