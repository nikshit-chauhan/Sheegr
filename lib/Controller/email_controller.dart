import 'package:get/get.dart';

class EmailController extends GetxController {
  RxString email = ''.obs;
  RxBool showError = false.obs;

  void validateEmail(String value) {
    final emailRegx = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    showError.value = value.isNotEmpty && !emailRegx.hasMatch(value);
  }
}
