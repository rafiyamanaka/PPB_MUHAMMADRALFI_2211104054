import 'package:flutter/material.dart';

class myTappbar extends StatefulWidget {
  const myTappbar({super.key});

  @override
  State<myTappbar> createState() => _myTappbarState();
}

class _myTappbarState extends State<myTappbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu Tap Bar"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
                ),
              Tab(
                icon: Icon(Icons.business),
                text: 'Wisata',
                ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
                ),
              ],
            ),
          backgroundColor: Colors.amber,
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Homepage'),
          ),
          Center(
            child: Text('Wisata'),
          ),
          Center(
            child: Text('Profile'),
          ),
        ]),
      ),
    );
  }
}
