import 'package:flutter/material.dart';

class listScreen extends StatefulWidget {
  const listScreen({super.key});

  @override
  State<listScreen> createState() => _listScreenState();
}

class _listScreenState extends State<listScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['a','b','c', 'd', 'e'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200];

    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Jenis List View'),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index){
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text("Entry ${entries[index]}"),
          ),
          );
      },
      itemCount: entries.length,
      separatorBuilder: (BuildContext context, int index) { 
        return Container(height: 10, color: Colors.blue);
       },
      ),
    );
  }
}