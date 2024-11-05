import 'package:flutter/material.dart';

class detailpage extends StatelessWidget {
  const detailpage({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation page'),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: Center(
        child: 
        Text(
        data,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
    );
  }
}