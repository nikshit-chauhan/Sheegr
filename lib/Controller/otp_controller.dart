import 'package:get/get.dart';

class OtpController extends GetxController {
  RxString otp = ''.obs;

  void setOtp(String value) {
    otp.value = value;
  }
}
