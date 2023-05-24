import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/Controller/email_controller.dart';
import 'package:sheegr/Resources/Colors.dart';
import 'package:sheegr/Utils/Widgets/custom_text_filed.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

import '../../../Resources/Strings.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  final EmailController controller = Get.put(EmailController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  List<String> categories = [
    '---Select Category---',
    'Restaurants',
    'Hotels',
    'Pub',
    'Bar',
    'Others',
  ];
  RxString selectedCategory = '---Select Category---'.obs;
  RxBool showError = false.obs;

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        body: Form(
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
                      const Text(
                        'USER PROFILE',
                        style: TextStyle(
                            fontSize: 30, fontFamily: 'Quicksand-Bold'),
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
                          hintText: 'Business Name',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 59,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 20,
                          width: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    '+91',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 33,
                                    color: const Color.fromARGB(
                                        255, 161, 160, 160),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                  ),
                                  const Text(
                                    //TODO: update this to change with the input number in login page
                                    '9358863623',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.check_sharp,
                                size: 25,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(() {
                        return TextFormField(
                          controller: emailController,
                          //TODO: add validator and onChanged
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            errorText: controller.showError.value
                                ? 'Invalid Email'
                                : null,
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
                          onChanged: (value) {
                            controller.email.value = value;
                            controller.validateEmail(value);
                          },
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        keyboardType: TextInputType.streetAddress,
                        textCapitalization: TextCapitalization.none,
                        controller: addressController,
                        hintText: 'Address',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(() {
                        return DropdownButton<String>(
                          value: selectedCategory.value,
                          items: categories.map((category) {
                            return DropdownMenuItem(
                              value: category,
                              child: Text(category),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              selectedCategory.value = newValue;
                            }
                          },
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          itemHeight: 60,
                          dropdownColor: Colors.white,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 28,
                          isExpanded: true,
                          selectedItemBuilder: ((context) {
                            return categories.map<Widget>((String item) {
                              return Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(
                                    item,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              );
                            }).toList();
                          }),
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(() {
                        return TextFormField(
                          textCapitalization: TextCapitalization.characters,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          maxLength: 15,
                          onChanged: (value) {
                            if (value.length < 15) {
                              showError.value = true;
                            } else {
                              showError.value = false;
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: TextButton(
                              //TODO: validate the GSTIN with GST Api
                              onPressed: () {},
                              child: const Text(
                                'VERIFY',
                                style: TextStyle(
                                    fontSize: 15, color: colorPrimary),
                              ),
                            ),
                            errorText: showError.value
                                ? 'Enter a valid 15 character GST Number!'
                                : null,
                            labelText: 'GSTIN',
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
                            hintText: 'GST Number',
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          //TODO: implement onPressed functionality
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorPrimary),
                          child: const Text(
                            Strings.CONTINUE,
                            style: TextStyle(
                              fontFamily: "Quicksand-Bold",
                              fontSize: 20,
                            ),
                          ),
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
    );
  }
}
