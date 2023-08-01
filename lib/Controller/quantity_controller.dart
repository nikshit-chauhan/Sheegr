import 'dart:developer';

import 'package:get/get.dart';

class QuantityController extends GetxController {
  RxInt quantity = 4
      .obs; // Initialize quantity as an observable RxInt with an initial value of 0

  void increaseQuantity() {
    quantity.value++;
    log(quantity.toString());

    // Increase the value of quantity by 1
  }

  void decrementQuantity() {
    quantity.value--;
  }
}
