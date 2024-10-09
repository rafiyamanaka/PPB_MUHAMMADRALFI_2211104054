import 'package:flutter/material.dart';

class stackScreen extends StatelessWidget {
  const stackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Learning'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 0, 166, 255),
          ),
        ],
      ),
    );
  }
}