import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/models/api_model.dart';
import 'package:getx_tips_tricks/services/services.dart';

class ApiController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductList>[].obs;

  @override  
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiServices.fetchProducts();
      if(products != null) {
        productList.assignAll(products);
      }
    } finally {
      // TODO
      isLoading(false);
    }
  }
}