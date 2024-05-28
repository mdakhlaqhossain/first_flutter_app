// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/pages/index.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/setting.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
      routes: {
        '/index': (context) => Index(),
        '/home': (context) => Home(),
        '/setting': (context) => Setting(),
        '/profile': (context) => Profile(),
      },
    );
  }
}