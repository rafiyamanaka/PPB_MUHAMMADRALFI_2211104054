import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nama',
                border: OutlineInputBorder()
                
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Email',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: (){},
              child: Text('Submit', style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber
              ),
              ),
          ],
        ),
        ),
    );
  }
}