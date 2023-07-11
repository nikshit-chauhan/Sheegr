import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/faq_controller.dart';
import '../../../Resources/colors.dart';

class FAQ extends StatelessWidget {
  FAQ({super.key});
  //TODO: update the code to take the faq question from API
  final List<Map> faqList = [
    {
      'question': 'Question 1',
      'answer': 'This is the answer to question 1.',
    },
    {
      'question': 'Question 2',
      'answer': 'This is the answer to question 2.',
    },
    {
      'question': 'Question 3',
      'answer': 'This is the answer to question 3.',
    },
    {
      'question': 'Question 4',
      'answer': 'This is the answer to question 4.',
    },
    {
      'question': 'Question 5',
      'answer': 'This is the answer to question 5.',
    },
    {
      'question': 'Question 6',
      'answer': 'This is the answer to question 6.',
    },
    // Add more questions and answers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "FAQ",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Quicksand-SemiBold",
              fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () => Get.back(),
        ),
        backgroundColor: colorPrimary,
        leadingWidth: 40,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GetBuilder<FAQController>(
          init: FAQController(faqList.length),
          builder: (controller) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: faqList.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: grey1, width: 1),
                    ),
                    child: ExpansionTile(
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      iconColor: colorPrimary,
                      collapsedIconColor: colorPrimary,
                      trailing: controller.expanded[i]
                          ? const Icon(Icons.remove)
                          : const Icon(Icons.add),
                      onExpansionChanged: (value) {
                        controller.toggleExpand(i);
                      },
                      title: Text(
                        faqList[i]['question'],
                        style: const TextStyle(
                          color: textColor,
                          fontFamily: "Quicksand-Bold",
                          fontSize: 17,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Text(
                            faqList[i]['answer'],
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: grey,
                                fontFamily: "Quicksand-Regular",
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
