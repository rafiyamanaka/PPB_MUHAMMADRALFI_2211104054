import 'package:flutter/material.dart';
// import 'package:guided4/gridview.dart';
// import 'package:guided4/listView.dart';
import 'package:guided4/stack.dart';

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
      // home: const gridView(), // navigate ke gridview
      // home: const listView(), // navigate to listview
      home: const stackScreen(),
    );
  }
}