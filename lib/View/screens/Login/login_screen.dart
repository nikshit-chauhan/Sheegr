import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sheegr/Resources/Colors.dart';
import 'package:sheegr/View/screens/OTP/otp_verification_screen.dart';
import 'package:sheegr/View/screens/main_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../Resources/Strings.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController phoneNumberController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: Form(
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
                            controller: phoneNumberController,
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
                                        '+91',
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
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () =>
                              Get.to(const OtpVerificationScreen()),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorPrimary),
                          child: const Text(
                            Strings.CONTINUE,
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Quicksand-Bold",
                            ),
                          ),
                        ),
                      ),
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
    );
  }
}
