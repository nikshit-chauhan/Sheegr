import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class RegistrationScreen extends StatelessWidget {
  static String route = "/register";

  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.popAndPushNamed(context, '/main'),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          leadingWidth: 40,
        ),
        body: Form(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'REGISTER',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Quicksand-Bold'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.words,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp("[a-zA-Z \u0900-\u097F]")),
                          ],
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            hintText: 'Name',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.words,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            hintText: 'Mobile Number',
                            contentPadding: const EdgeInsets.all(10.0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 15,
                                width: 40,
                                child: Row(
                                  children: [
                                    const Text(
                                      '+91 ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Container(
                                      height: 33,
                                      width: 1,
                                      color: const Color.fromARGB(
                                          255, 161, 160, 160),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          textCapitalization: TextCapitalization.words,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp("[a-zA-Z \u0900-\u097F]")),
                          ],
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            )),
                            hintText: 'Email(Optional)',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent),
                            child: const Text(
                              'CONTINUE',
                              style: TextStyle(
                                fontFamily: "Quicksand-Bold",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              const Text(
                                'Already have an Account?',
                                style: TextStyle(fontSize: 17),
                              ),
                              TextButton(
                                onPressed: () => Navigator.popAndPushNamed(
                                    context, '/login'),
                                child: const Row(
                                  children: [
                                    Text('Login',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 17,
                                            fontFamily: "Quicksand-Bold")),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.redAccent,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
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
