import 'package:get/get.dart';

class FAQController extends GetxController {
  late List<bool> expanded;

  FAQController(int length) {
    expanded = List<bool>.filled(length, false);
  }

  void toggleExpand(int index) {
    expanded[index] = !expanded[index];
    update();
  }
}
