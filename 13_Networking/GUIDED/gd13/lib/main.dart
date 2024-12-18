import 'package:flutter/material.dart';
import 'package:gd13/view/detail_page.dart';
import 'package:gd13/view/my_home_page.dart';
import 'package:gd13/view_model/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final CounterController controller = Get.put(CounterController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // navigasi halaman mengunakan get initial route
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(title: 'Flutter Demo Home Page'),
        ),
        GetPage(
          name: '/detail',
          page: () => const MyDetail(),
        ),

      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


