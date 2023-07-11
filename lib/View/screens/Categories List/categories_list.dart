import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:sheegr/View/screens/Home/home.dart';

import '../../../Resources/colors.dart';
import '../ParticularCategoryList/particular_category_list.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Categories",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () => Get.to(Home()),
          ),
          backgroundColor: colorPrimary,
          leadingWidth: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => ParticularCategoryList());
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          child: CircleAvatar(
                            radius: 55,
                            foregroundImage:
                                AssetImage("lib/Assets/Images/friedfish.png"),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ListTile(
                            // leading: const CircleAvatar(
                            //   radius: 35,
                            //   foregroundImage:
                            //       AssetImage("lib/Assets/Images/friedfish.png"),
                            // ),
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const AutoSizeText(
                                  "Fresh Water Fish",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                  maxFontSize: 22,
                                  minFontSize: 10,

                                  // textAlign: TextAlign.start,
                                ),
                                const AutoSizeText(
                                  "Fresh Water Fish fdgfdsdfdsrg erg regregerger ergergerg ewrgfergsderg wref",
                                  style: TextStyle(fontSize: 15),
                                  maxFontSize: 15,
                                  minFontSize: 13,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  decoration: BoxDecoration(
                                    color: colorPrimary,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Colors.black.withOpacity(0.2))
                                  ),
                                  child: const Center(
                                    child: AutoSizeText(
                                      'Shop Now',
                                      minFontSize: 10,
                                      maxFontSize: 17,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
