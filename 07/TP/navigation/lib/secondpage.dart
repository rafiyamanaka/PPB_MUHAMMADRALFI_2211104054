import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Second Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'This page showcases additional content including an image, '
              'a descriptive text, and a button to return to the main page.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Center(
              child: Image.network(
                'https://www.petanikode.com/img/flutter/flutter.png',
                height: 200,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Flutter is an open-source UI software development toolkit created by Google. '
              'It is used to develop cross platform applications for Android, iOS, Linux, Mac, '
              'Windows, Google Fuchsia, and the web from a single codebase.',
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Main Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
