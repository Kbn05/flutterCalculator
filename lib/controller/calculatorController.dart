import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final TextEditingController _controller = TextEditingController();
  var val1 = '0'.obs;
  var val2 = '0'.obs;
  var result = '0'.obs;
  var operation = "".obs;

  TextEditingController get controller => _controller;

  void clear() {
    _controller.clear();
    val1.value = '0';
    val2.value = '0';
    result.value = '0';
    operation.value = "";
  }

  void delete() {
    if (result.value.replaceAll('-', '').length > 1) {
      result.value = result.value.substring(0, result.value.length - 1);
    } else {
      result.value = '0';
    }
  }

  void addNumber(String number) {
    _controller.text = _controller.text + number;
  }

  void calculate() {
    _controller.text = _controller.text;
  }
}
