// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/setting.dart';

class Index extends StatefulWidget {
  Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _i = 0;

  void _navigate(int i) {
    setState(() {
      _i = i;
    });
  }

  final List _pages = [
    Home(),
    Profile(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        backgroundColor: Colors.blue[400],
      ),
      body: _pages[_i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _i,
        onTap: _navigate,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.blue[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ]
      ),
    );
  }
}