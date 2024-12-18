import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 0.obs;
  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  void getSnackBar(){
    Get.snackbar('PROMO 12.12', 'Guncang desember dengan diskon serba 12K', colorText: Colors.white, backgroundColor: Colors.green, snackPosition: SnackPosition.TOP, duration: const Duration(seconds: 3));
  }

  void getDialog(){
    Get.defaultDialog(
      title: 'PROMO 12.12',
      middleText: 'Guncang desember dengan diskon serba 12K',
    );
  }

  void getBottomSheet(){
    Get.bottomSheet(
      Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Text('Bottom Sheet'),
        ),
      ),
    );
  }
}