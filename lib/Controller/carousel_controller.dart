import 'package:get/get.dart';

class CarouselController extends GetxController{
  var currentCarouselIndex = 0.obs;

  void onCarouselPageChange(int index){
    currentCarouselIndex.value = index;
  }
}