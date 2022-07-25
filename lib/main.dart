// ignore_for_file: prefer_const_constructors

import 'package:firstcode/bottombar.dart';
import 'package:flutter/material.dart';
import 'bottombar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromARGB(255, 234, 234, 234)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
