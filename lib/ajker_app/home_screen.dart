import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getx/ajker_app/controller.dart';
import 'package:getx/ajker_app/widget_all.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Calculatorcontroller controller = Get.put(Calculatorcontroller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Obx(
          () => Text(
            "${controller.openSlide}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _buildRow(
              hintText: "first num",
              hintText2: "second num",
              controller: controller.firstController,
              controller2: controller.secondController,
            ),
            SizedBox(height: 20),

            Obx(
              () => Text(
                "Res: ${controller.result}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(text: "+", ontap: controller.sum),
                CustomButton(text: "-", ontap: controller.substract),
                CustomButton(text: "*", ontap: controller.multiply),
                CustomButton(text: "clr", ontap: controller.result),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: Text("Slide"),
            ),

          ],
        ),
      ),
    );
  }
}

Row _buildRow({
  TextEditingController? controller,
  TextEditingController? controller2,
  String? hintText,
  String? hintText2,
}) {
  return Row(
    spacing: 15,
    children: [
      Expanded(
        child: CustomTextField(
          hintText: "${hintText ?? ""}",
          controller: controller,
        ),
      ),
      Expanded(
        child: CustomTextField(
          hintText: "${hintText2 ?? ""}",
          controller: controller2,
        ),
      ),
    ],
  );
}
