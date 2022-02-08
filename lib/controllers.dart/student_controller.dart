import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/models/student.dart';
import 'package:getx_tips_tricks/models/student_model.dart';

class StudentController extends GetxController {
  var student = StudentModel();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
  void convertToLowerCase() {
    student.name.value = student.name.value.toLowerCase();
  }
}