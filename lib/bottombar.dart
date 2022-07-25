// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'homepage.dart';
import 'searchpage.dart';
import 'orders.dart';
import 'profile.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    Orders(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 234, 234, 234),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            color: Color.fromARGB(255, 92, 91, 91),
            activeColor: Colors.white,
            haptic: true,
            gap: 8,
            tabBorderRadius: 25,
            tabBackgroundColor: Color.fromARGB(255, 46, 47, 46),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            selectedIndex: index,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconSize: 30,
                onPressed: () {
                  setState(() => {index = 0});
                },
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                iconSize: 30,
                onPressed: () {
                  setState(() => {index = 1});
                },
              ),
              GButton(
                icon: Icons.list,
                text: 'Orders',
                iconSize: 30,
                onPressed: () {
                  setState(() => {index = 2});
                },
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
                iconSize: 30,
                onPressed: () {
                  setState(() => {index = 3});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
