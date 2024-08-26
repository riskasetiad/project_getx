import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'udah ah cape',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }
  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'stopppp',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: const Color.fromARGB(255, 255, 7, 7));
    } else {
      bilangan.value--;
    }
  }
  void refresh() {
     Get.snackbar('Warning', 'jadian lagi ya',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 48, 255, 7));
      bilangan.value = 0;
  }
}
