import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx/getx_part/controller/getx_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CalculatorController controller = Get.put(CalculatorController());
    log("======1111");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "GetX controller",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "myFont",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            _buildRow(
              title: "Enter 1st number:",
              controller: controller.firstnumController,
            ),
            _buildRow(
              title: "Enter 2nd number:",
              controller: controller.secondnumController,
            ),
            SizedBox(height: 20),
            Center(
              child: Obx(() => Text("${controller.result.toStringAsFixed(4)}")),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.sumFun();
              },
              child: Text("Tap"),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildRow({TextEditingController? controller, String? title}) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: Text("${title}", style: TextStyle(fontSize: 20))),
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
