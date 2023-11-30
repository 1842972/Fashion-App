import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashion/Screens/watches.dart';

import 'package:fashion/Screens/bag.dart';
import 'package:fashion/Screens/clothes.dart';

import 'package:flutter/material.dart';



// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [
    Watches(),
    Clothes(),

    Bags(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(
          255,
          205,
          117,
          218,
        ),
        buttonBackgroundColor: Colors.white,
        index: currentIndex,
        items: [
          Text("Watchs"),
          Text("Cloths"),
          Text("Bags"),
          
          // GButton(
          //   icon: Icons.person,
          //   text: "cloths",
          // ),
          // GButton(
          //
          //   text: "watchs", icon: Icons.access_time_filled,
          // ),
          // GButton(
          //   icon: Icons.shopping_bag,
          //   text: "Bags",
          // ),

        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

      body: screens[currentIndex],

    );
  }
}
