import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sheegr/Resources/colors.dart';
import 'package:sheegr/View/screens/main_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../Resources/strings.dart';
import '../Home/home.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String? mobileNumber;
  const OtpVerificationScreen({super.key, required this.mobileNumber});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                  onPressed: () => Get.back(),
                ),
                backgroundColor: Colors.white,
                leadingWidth: 40,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        Strings.otp,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                            fontFamily: "Quicksand-Bold",
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter the 6 digit code sent to you",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Quicksand-Regular",
                            color: Colors.grey.shade800),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'at +91 ',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Quicksand-Regular",
                                color: Colors.grey.shade800),
                          ),
                          Text(
                            '$mobileNumber',
                            style: TextStyle(
                                fontFamily: "Quicksand-Regular",
                                fontSize: 20,
                                color: Colors.grey.shade800),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Poppins-Regular"),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            length: 6,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 52,
                                fieldWidth: 40,
                                activeFillColor: colorPrimary,
                                disabledColor: colorPrimary,
                                activeColor: colorPrimary,
                                selectedColor: colorPrimary,
                                inactiveColor: colorPrimary),
                            cursorColor: colorPrimary,
                            textStyle: const TextStyle(color: Colors.black),
                            animationDuration:
                                const Duration(milliseconds: 300),
                            keyboardType: TextInputType.number,
                            boxShadows: const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.transparent,
                                blurRadius: 10,
                              )
                            ],
                            enableActiveFill: false,
                            onChanged: (value) {
                              // print(value);
                            }),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: size.height * .06,
                        width: size.width * .9,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll( Home());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            Strings.login.toUpperCase(),
                            style: const TextStyle(
                                fontFamily: "Quicksand-Bold",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
