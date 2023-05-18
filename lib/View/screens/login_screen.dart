import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sheegr/View/screens/main_screen.dart';
import 'package:sheegr/View/screens/registration_screen.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  String phoneNumber = '';

  String otp = '';

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () => Get.off(const MainScreen())),
          title: const Text('Login'),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () => Get.off(
                    const RegistrationScreen()), //TODO: correct the route here to login Auth page
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
// class LoginScreen extends StatelessWidget {
//   static String routeName = "/login";
//   final _formKey = GlobalKey<FormState>();

//   LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) => Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: WillPopScope(
//             onWillPop: () async {
//               // Get.to(LoginRequired());

//               return true; // return true to allow the back navigation
//             },
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: IconButton(
//                 onPressed: () {
//                   Get.back();
//                 },
//                 icon: const Icon(
//                   Icons.arrow_back_ios_new,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//           leadingWidth: 40,
//         ),
//         body: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const Text(
//                             'Login',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontFamily: "Quicksand-Bold",
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           const Text(
//                             'Enter Mobile Number',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontFamily: "Quicksand-Regular",
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 30,
//                           ),
//                           Column(
//                             children: [
//                               Obx(
//                                 () => TextFormField(
//                                   keyboardType: TextInputType.number,
//                                   inputFormatters: <TextInputFormatter>[
//                                     LengthLimitingTextInputFormatter(10),
//                                     FilteringTextInputFormatter.digitsOnly
//                                   ],
//                                   cursorColor: Colors.black,
//                                   decoration: InputDecoration(
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Colors.grey.shade300,
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(
//                                       color: Colors.grey.shade300,
//                                     )),
//                                     focusedErrorBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(
//                                       color: Colors.grey.shade300,
//                                     )),
//                                     errorBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(
//                                       color: Colors.grey.shade300,
//                                     )),
//                                     hintText: 'Mobile Number',
//                                     contentPadding: const EdgeInsets.all(10.0),
//                                     prefixIcon: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 15,
//                                         width: 40,
//                                         child: Row(
//                                           children: [
//                                             const Text(
//                                               '+91',
//                                               style: TextStyle(fontSize: 15),
//                                             ),
//                                             Container(
//                                               height: 33,
//                                               width: 1,
//                                               color: const Color.fromARGB(
//                                                   255, 161, 160, 160),
//                                               margin:
//                                                   const EdgeInsets.symmetric(
//                                                       horizontal: 5),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   onChanged: (value) {},
//                                   // validator: (mobile) {
//                                   //   if (loginController.mobileController.text
//                                   //           .trim()
//                                   //           .length ==
//                                   //       0) {
//                                   //     return Strings.enterMobile;
//                                   //   }
//                                   //   if (loginController.mobileController.text
//                                   //       .trim()
//                                   //       .startsWith("0")) {
//                                   //     return Strings.validMobile;
//                                   //   }
//                                   //   if (loginController.mobileController.text
//                                   //           .trim()
//                                   //           .length !=
//                                   //       10) {
//                                   //     return Strings.validMobile;
//                                   //   }
//                                   // },
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           SizedBox(
//                               width: double.infinity,
//                               height: 50.0,
//                               child: ElevatedButton(
//                                   onPressed: (() {
//                                     if (_formKey.currentState!.validate()) {
//                                       // loginController.checkMobile(context);
//                                     }
//                                   }),
//                                   style: ElevatedButton.styleFrom(
//                                       // primary: colorPrimary,
//                                       ),
//                                   child: const Text(
//                                     'Continue',
//                                     style: TextStyle(
//                                       fontFamily: "Quicksand-Bold",
//                                     ),
//                                   ))),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                         ]),
//                   ),
//                   Column(
//                     children: [
//                       Divider(
//                         thickness: 1,
//                         color: Colors.grey.shade300,
//                       ),
//                     ],
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: InkWell(
//                         onTap: () {
//                           Get.to(const RegistrationScreen());
//                         },
//                         child: Row(
//                           children: [
//                             const Text(
//                               'Don\'t have an account?',
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 121, 118, 118),
//                                   fontSize: 17),
//                             ),
//                             TextButton(
//                               onPressed: (() {
//                                 Get.to(const RegistrationScreen());
//                                 // registerController.resetControllers();
//                               }),
//                               child: const Row(
//                                 children: [
//                                   Text(
//                                     'Register',
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 17,
//                                       fontFamily: "Quicksand-Bold",
//                                     ),
//                                   ),
//                                   Icon(
//                                     Icons.arrow_forward,
//                                     color: Colors.black,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ))
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
