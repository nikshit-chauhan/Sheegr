import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

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
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () => Get.back(),
          ),
          backgroundColor: colorPrimary,
          leadingWidth: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(2, (subIndex) {
                  int itemIndex = index * 2 + subIndex;
                  if (itemIndex < 1) {
                    return GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ParticularCategoryList(),
                            transition: Transition.cupertino,
                            duration: const Duration(milliseconds: 600),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            semanticContainer: true,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Hero(
                                    tag: 'new1',
                                    child: Image.asset(
                                        "lib/Assets/Images/friedfish.png")),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE40045)
                                        .withOpacity(0.8),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: const ListTile(
                                    titleAlignment:
                                        ListTileTitleAlignment.center,
                                    title: AutoSizeText("Fried Fish",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  } else {
                    return const Text("");
                  }
                }),
              );
            },
          ),
        ));
  }
}
