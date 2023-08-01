import 'package:get/get.dart';

class MobileController extends GetxController {
  RxString mobileNumber = ''.obs;

  void setMobileNumber(String value) {
    mobileNumber.value = value;
    update();
  }
}
