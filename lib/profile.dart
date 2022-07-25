import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _SearchPageState();
}

class _SearchPageState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor: Colors.black,
    );
  }
}
