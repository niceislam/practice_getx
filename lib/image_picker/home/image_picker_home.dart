import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/image_picker/controller/picker_controller.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHome extends StatelessWidget {
  const ImagePickerHome({super.key});

  @override
  Widget build(BuildContext context) {
    PickerController controller = Get.put(PickerController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "image picker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "myFont",
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Obx(() => Text("${controller.Date}")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
