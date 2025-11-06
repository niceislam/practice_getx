import 'package:intl/intl.dart';
import 'package:get/get.dart';

class PickerController extends GetxController {
  Rx<String> Date = DateFormat.jms().format(DateTime.now()).obs;

  dateFun() async {
    Date.value = DateFormat.jms().format(DateTime.now());
    await Future.delayed(Duration(seconds: 1));
    dateFun();
  }

  @override
  void onInit() {
    dateFun();
    super.onInit();
  }
}
