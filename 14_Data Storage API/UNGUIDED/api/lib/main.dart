// FILEPATH: d:/PPB_MUHAMMAD_RALFI_SE-06-2/14_Data Storage API/UNGUIDED/api/lib/main.dart
import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api/screen/hompegae_screen.dart';
import 'package:api/services/api_servise.dart';

void main() {
  // Initialize ApiService
  Get.put(ApiService());
  
  // Initialize PostController
  Get.put(PostController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX API Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HompegaeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
