import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
    update(); // Will update the count variable on UI
  }
  void decrement() {
    count--;
    update();
  }
}