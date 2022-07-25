import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 33, 31, 31),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      body: Container(),
    );
  }
}
