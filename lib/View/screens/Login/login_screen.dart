import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sheegr/Controller/mobile_controller.dart';
import 'package:sheegr/Resources/colors.dart';
import 'package:sheegr/View/screens/OTP/otp_verification_screen.dart';
import 'package:sheegr/View/screens/main_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../Resources/strings.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  static String verificationId = "";
  MobileController phoneNumberController = Get.put(MobileController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String countryCode = '+91';
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () => Get.off(
              const MainScreen(),
            ),
          ),
          backgroundColor: Colors.transparent,
          leadingWidth: 40,
        ),
        body: SingleChildScrollView(
          child: Form(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Image(
                        image: AssetImage("lib/Assets/Images/logotwo.png")),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          Strings.login,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Quicksand-Bold",
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          Strings.enterurnumber,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Quicksand-Regular",
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Column(
                          children: [
                            TextFormField(
                              onChanged: (value) {
                                phoneNumberController.setMobileNumber(value);
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                hintText: Strings.mobilenumber,
                                contentPadding: const EdgeInsets.all(10.0),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: Row(
                                      children: [
                                        const Text(
                                          countryCode,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Container(
                                          height: 33,
                                          width: 1,
                                          color: const Color.fromARGB(
                                              255, 161, 160, 160),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Obx(() {
                          final isValidNumber = phoneNumberController
                                  .mobileNumber
                                  .toString()
                                  .length ==
                              10;
                          return SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: ElevatedButton(
                              onPressed: isValidNumber
                                  ? () async {
                                      String mobileNum = phoneNumberController
                                          .mobileNumber.value;
                                      await auth.verifyPhoneNumber(
                                        phoneNumber: countryCode + mobileNum,
                                        verificationCompleted:
                                            (PhoneAuthCredential
                                                credential) async {
                                          await FirebaseAuth.instance
                                              .signInWithCredential(credential)
                                              .then((value) async {
                                            log("signinWithCredentials : $value");
                                          });
                                        },
                                        verificationFailed:
                                            (FirebaseAuthException e) {
                                          if (e.code ==
                                              'invalid-phone-number') {
                                            log('The provided phone number is not valid.');
                                          }
                                        },
                                        codeSent: (String verificationId,
                                            int? resendToken) {
                                          verificationId = verificationId;
                                          Get.to(OtpVerificationScreen(
                                            mobileNumber: mobileNum,
                                          ));
                                        },
                                        codeAutoRetrievalTimeout:
                                            (String verificationId) {},
                                      );
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  disabledBackgroundColor: Colors.grey.shade300,
                                  disabledForegroundColor: Colors.white,
                                  backgroundColor: colorPrimary),
                              child: const Text(
                                Strings.continuE,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Quicksand-Bold",
                                ),
                              ),
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
