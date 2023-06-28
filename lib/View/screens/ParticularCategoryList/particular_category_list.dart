// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheegr/View/screens/Categories%20List/categories_list.dart';

import '../../../Controller/quantity_controller.dart';
import '../../../Resources/fontstyle.dart';
import '../ItemInfo/iteminfo.dart';

class ParticularCategoryList extends StatelessWidget {
  ParticularCategoryList({super.key});
  QuantityController quantity = Get.put(QuantityController());
  //  int quantity = 0;
  bool _isShow = false;

  Widget addToCardWidget() {
    return Visibility(
      visible: _isShow,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: quantity.decrementQuantity,
            color: const Color(0xffE40045),
          ),
          Text(
            quantity.toString(),
            style: const TextStyle(
                color: Color(0xffE40045),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: quantity.incrementQuantity,
            color: const Color(0xffE40045),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 160,
            backgroundColor: const Color(0xffE40045).withOpacity(1),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () => Get.offAll(const CategoriesList(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 600)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: const AutoSizeText(
                'Category Name',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              background: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      const Color.fromARGB(255, 255, 243, 243).withOpacity(0.5),
                      BlendMode.srcOver),
                  child: Hero(
                    tag: 'new1',
                    child: Image.asset(
                      "lib/Assets/Images/friedfish.png",
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: AutoSizeText(
                  'Some description about the category...!',
                  style: AppFontStyle.cotentTextStyle(),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => ItemInfo(
                          imagePath: "assets/icons/friedfish.png",
                        ),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 600),
                      );
                    },
                    child: Card(
                      shadowColor: const Color(0xffE40045).withOpacity(0.8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        color: Colors.transparent,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "lib/Assets/Images/friedfish.png",
                                  )),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: const AutoSizeText(
                                      "fsdfsd /sdfsdf 4443324/ weifuei / fwehf efwrfrw",
                                      maxLines: 2,
                                      maxFontSize: 17,
                                      minFontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const AutoSizeText(
                                    "₹323",
                                    maxFontSize: 16,
                                    minFontSize: 10,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.04),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: ListTile(
                                  title: const AutoSizeText("Add to cart",
                                      style: TextStyle(color: Colors.black)),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      // setState(
                                      //   () {
                                      // _isShow = true;
                                      //     quantity++;
                                      //   },
                                      // );
                                    },
                                    child: _isShow
                                        ? addToCardWidget()
                                        : Card(
                                            color: const Color(0xffE40045),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Colors.transparent),
                                                borderRadius:
                                                    BorderRadius.circular(0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4),
                                              child: AutoSizeText(
                                                "Add",
                                                // maxFontSize: 12,
                                                // minFontSize: 7,
                                                style: AppFontStyle
                                                    .flexibleFontStyle(
                                                        fontColor: const Color
                                                                .fromARGB(255,
                                                            255, 255, 255)),
                                              ),
                                            ),
                                          ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
