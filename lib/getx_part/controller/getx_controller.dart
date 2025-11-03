import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  TextEditingController firstnumController = TextEditingController();
  TextEditingController secondnumController = TextEditingController();
  RxDouble result = 0.00.obs;

  sumFun() {
    var a = double.parse(firstnumController.text);
    var n = double.parse(secondnumController.text);
    result.value = a + n;
  }
}
