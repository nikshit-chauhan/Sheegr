import 'package:get/get.dart';

class QuantityController extends GetxController {
  RxInt quantity = 0.obs;
  final RxBool _isShow = false.obs;

  void incrementQuantity() {
    quantity.value++;
    _isShow.value = true;
  }

  void decrementQuantity() {
    quantity.value--;
    _isShow.value = true;
  }
}
