import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

import '../ParticularCategoryList/particular_category_list.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          centerTitle: true,
          backgroundColor: Color(0xffE40045),
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            "Categories",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                                        "assets/icons/friedfish.PNG")),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffE40045).withOpacity(0.8),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: ListTile(
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
                    return Text("");
                  }
                }),
              );
            },
          ),
        ));

  }
}