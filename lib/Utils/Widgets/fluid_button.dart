// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:sheegr/Resources/colors.dart';

import '../../Resources/fontstyle.dart';

class FluidButton extends StatelessWidget {
  FluidButton(
      // required String buttonName,
      {required this.buttonName,
      required this.onPressed,
      this.buttonTextColor,
      this.buttonColor,
      super.key});

  String buttonName;
  Function() onPressed;
  Color? buttonColor, buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.06),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor ?? colorPrimary,
              //  Color.fromARGB(255, 64, 236, 142),
            ),
            onPressed: onPressed,
            child: AutoSizeText(
              maxFontSize: 15, minFontSize: 8,
              buttonName.toUpperCase(),
              // TextConstants.signincontinue,
              style: AppFontStyle.signInButtonStyle().copyWith(
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
