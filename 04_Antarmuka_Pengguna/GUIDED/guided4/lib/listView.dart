import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4 List View', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
            child: Center(child: Text('List View 1')),
          ),
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 255, 59, 59),
            child: Center(child: Text('List View 2')),
          ),
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 0, 255, 200),
            child: Center(child: Text('List View 3')),
          ),
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 59, 206, 255),
            child: Center(child: Text('List View 4')),
          ),
        ],
      ),
    );
  }
}