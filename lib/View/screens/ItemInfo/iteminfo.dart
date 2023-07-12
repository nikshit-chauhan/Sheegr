// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sheegr/Controller/quantity_controller.dart';

import '../../../Resources/colors.dart';
import '../../../Resources/fontstyle.dart';
import '../../../Utils/Widgets/ItemInformation/related_products_widget.dart';

class ItemInfo extends StatelessWidget {
  final String imagePath;
  QuantityController quantity = Get.put(QuantityController());
  ItemInfo({required this.imagePath});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Item Information",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () => Get.back(),
        ),
        backgroundColor: colorPrimary,
        leadingWidth: 40,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AutoSizeText(
                "Mackerel / Ayala / Bangda / Aylai / ಬಿಂಗಡೆ,",
                maxLines: 2,
                maxFontSize: 21,
                minFontSize: 16,
                overflow: TextOverflow.ellipsis,
                style: AppFontStyle.flexibleFontStyle(
                    fontSize: 21, fontWeight: FontWeight.bold),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                    transitionOnUserGestures: true,
                    tag: 'image1',
                    child: Image.asset("lib/Assets/Images/friedfish.png")),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                // width: MediaQuery.of(context).size.width * 0.02,
              ),
              AutoSizeText(
                "Customize your order",
                textAlign: TextAlign.left,
                maxLines: 1,
                maxFontSize: 19,
                minFontSize: 15,
                overflow: TextOverflow.ellipsis,
                style: AppFontStyle.flexibleFontStyle(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
              
             
              
              Padding(
                padding: const EdgeInsets.all(4),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4),
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "lib/Assets/Images/friedfish.png",
                                        fit: BoxFit.cover,
                                      ))),
                              const Expanded(
                                child: ListTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "Whole fish",
                                        maxLines: 2,
                                        maxFontSize: 17,
                                        minFontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      AutoSizeText(
                                        "₹323",
                                        maxFontSize: 13,
                                        minFontSize: 8,
                                      ),
                                    ],
                                  ),
                                  subtitle: AutoSizeText(
                                    "Net 550g",
                                    maxFontSize: 13,
                                    minFontSize: 8,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: quantity.increaseQuantity,
                                      color: const Color(0xffE40045),
                                    ),
                                    //TODO: Need to implement Getx addQuantity Method
                                    const Text(
                                      // quantity.toString(),
                                      "0",
                                      style: TextStyle(
                                          color: Color(0xffE40045),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: quantity.increaseQuantity,
                                      color: const Color(0xffE40045),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                // width: MediaQuery.of(context).size.width * 0.02,
              ),
              AutoSizeText(
                "About the product",
                textAlign: TextAlign.left,
                maxLines: 1,
                maxFontSize: 19,
                minFontSize: 15,
                overflow: TextOverflow.ellipsis,
                style: AppFontStyle.flexibleFontStyle(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Product Description :",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      maxFontSize: 17,
                      minFontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    AutoSizeText(
                      "Mackerel is a popular fish in Indian cuisine, known for its rich, oily texture and bold, distinct flavour. It's often used in spicy fish curries, pan-fried with, spices, and pickled, making it a versatile choice for various regional recipes.",
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      maxFontSize: 16,
                      minFontSize: 9,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                      // width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    AutoSizeText(
                      "ಭಾರತೀಯ ಆಹಾರದಲ್ಲಿ, ಮ್ಯಾಕರಲ್ ಪ್ರಸಿದ್ಧ ಮೀನಾಗಿದೆ. ಇದರ ವಿಶಿಷ್ಟವಾದ ರುಚಿಯ ಕಾರಣ ಇದನ್ನು ಮಸಾಲೆಯುಕ್ತ ಪದಾರ್ಥಗಳಲ್ಲಿ ಮಾತ್ರವಲ್ಲದೆ, ಉಪ್ಪಿನ ಕಾಯಿ ಹಾಕಲು ಕೂಡ ಬಳಸಲಾಗುತ್ತದೆ.",
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      maxFontSize: 16,
                      minFontSize: 9,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                      // width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    AutoSizeText(
                      "Storage Instructions :",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      maxFontSize: 17,
                      minFontSize: 15,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    AutoSizeText(
                      "Ensure proper hygiene and refrigerate at or below 4°C for storage.",
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      maxFontSize: 16,
                      minFontSize: 9,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyle.flexibleFontStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        AutoSizeText(
          'Related Products',
          style: AppFontStyle.flexibleFontStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontColor: Colors.black),
          minFontSize: 14,
          maxFontSize: 20,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
        ),
              RelatedProductsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
