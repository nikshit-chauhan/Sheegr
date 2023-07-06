// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sheegr/Resources/colors.dart';
import 'package:sheegr/Resources/textsize_constants.dart';

// This class will have all the fontStyle constant which are using in the App.
class AppFontStyle {
  static const String boldFont = "PoppinsBold";
  static const String regularFont = "PoppinsRegular";

  static TextStyle flexibleFontStyle(
      {double? fontSize,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      Color? fontColor,
      double? lineSpacing,
      double? height,
      String? fontFamily}) {
    return TextStyle(
        color: fontColor,
        //  ?? ColorConstants.headerText,
        fontFamily: fontFamily ?? regularFont,
        letterSpacing: lineSpacing,
        height: height,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.w600);
  }

  static TextStyle PrimaryHeadingStyle1() {
    return const TextStyle(
      fontFamily: regularFont,
      color: Colors.black,
      // ColorConstants.primaryTextColor,
      fontSize: ConstantTextSize.primaryHeaderTextSize,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle cotentTextStyle(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? fontColor,
      double? height}) {
    return const TextStyle(
      // color: ColorConstants.headerText,
      color: colorPrimary,
      fontSize: ConstantTextSize.contentTextSize1,
      fontFamily: regularFont,
    );
  }

  static TextStyle signInButtonStyle(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? fontColor,
      double? height}) {
    return const TextStyle(
      // color: ColorConstants.headerText,
      // color: Color.fromARGB(255, 0, 0, 0),
      // fontWeight: FontWeight.bold,
      fontFamily: regularFont,
      color: colorPrimary,
      fontSize: ConstantTextSize.buttonTextSize,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle headerText() {
    return const TextStyle(
      // color: ColorConstants.headerText,
      fontFamily: boldFont,
      fontSize: 36,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle headerStyle1() {
    return const TextStyle(
        color: Colors.black,
        fontFamily: regularFont,
        // fontFamily: 'LatoThin',
        fontSize: 30,
        // MediaQuery.of(context).size.width * 0.05 ,
        fontWeight: FontWeight.bold);
  }

  static TextStyle headerStyle3() {
    return const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontFamily: regularFont,
        // fontFamily: 'LatoThin',
        fontSize: 40,
        fontWeight: FontWeight.bold);
  }

  static TextStyle secondaryText() {
    return const TextStyle(
      // color: ColorConstants.instructionColor,
      fontFamily: regularFont,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
  }

  static TextStyle secondaryTextBold() {
    return const TextStyle(
      color: Colors.black,
      // color: ColorConstants.secondaryTextColor7CB1FF,
      fontFamily: regularFont,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
  }

  static const customAlertTitle = TextStyle(
    color: Colors.black,
    fontFamily: regularFont,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
}
