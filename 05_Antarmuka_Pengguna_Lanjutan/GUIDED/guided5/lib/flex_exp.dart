import 'package:flutter/material.dart';

class flexScreen extends StatelessWidget {
  const flexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible and Expanded Layout'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Text('Flexible', style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Text('We Got Learning Flutter About Flexible Layout before we got GTA 6!'),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_rounded),
            ],
          ),
          SizedBox(height: 20,),
          Text('Expanded', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Text('We Got Learning Flutter About Flexible Layout before we got GTA 6!'),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_rounded),
            ],
          ),
        ],
      ),

    );
  }
}