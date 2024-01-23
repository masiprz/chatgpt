import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFeildController extends GetxController {
  TextEditingController? text;

  @override
  void onInit() {
    text = TextEditingController();
    super.onInit();
  }
}
