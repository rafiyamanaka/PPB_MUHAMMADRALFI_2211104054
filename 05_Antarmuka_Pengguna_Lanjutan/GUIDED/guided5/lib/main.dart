import 'package:flutter/material.dart';
import 'package:guided5/customScroll.dart';
// import 'package:guided5/customScroll.dart';
// import 'package:guided5/flex_exp.dart';
import 'package:guided5/jenis_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const customScrollview(),
      // home: const flexScreen(),
      home: const customScrollview(),
    );
  }
}