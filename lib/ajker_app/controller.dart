import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Calculatorcontroller extends GetxController {
  RxDouble result = 0.00.obs;
  Rx<bool> openSlide = false.obs;
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  slide() {
    openSlide.value = !openSlide.value;
  }

  sum() {
    result.value =
        double.parse(firstController.text) +
        double.parse(secondController.text);
  }

  substract() {
    result.value =
        double.parse(firstController.text) -
        double.parse(secondController.text);
  }

  multiply() {
    result.value =
        double.parse(firstController.text) *
        double.parse(secondController.text);
  }
}
