import 'package:flutter/material.dart';

class gridView extends StatefulWidget {
  const gridView({super.key});

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Praktikum 4 Grid View',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: Colors.yellow,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: const Color.fromARGB(255, 255, 59, 59),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: const Color.fromARGB(255, 59, 255, 62),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: const Color.fromARGB(255, 59, 173, 255),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: const Color.fromARGB(255, 157, 59, 255),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: const Color.fromARGB(255, 254, 247, 181),
          ),
        ],
      ),
    );
  }
}
