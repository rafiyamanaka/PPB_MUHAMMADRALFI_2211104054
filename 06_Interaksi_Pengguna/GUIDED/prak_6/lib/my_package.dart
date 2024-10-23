import 'package:flutter/material.dart';

class myPackage extends StatefulWidget {
  const myPackage({super.key});

  @override
  State<myPackage> createState() => _myPackageState();
}

class _myPackageState extends State<myPackage> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              obscureText: false,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person), // Inside border
                hintText: 'Input Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock), // Inside border
                hintText: 'Input Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'This is Elevated Button',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Ini adalah Text Button',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 15),
            DropdownButton<String>(
              value: selectedValue,
              isExpanded: true,
              hint: const Text('Pilih Opsi'),
              items: <String>['Opsi 1', 'Opsi 2', 'Opsi 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newvalue){
                setState(() {
                  selectedValue = newvalue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}