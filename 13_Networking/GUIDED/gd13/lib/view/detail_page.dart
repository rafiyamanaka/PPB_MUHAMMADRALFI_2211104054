import 'package:flutter/material.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Text('Detail Page'),
      ),
    );
  }
}