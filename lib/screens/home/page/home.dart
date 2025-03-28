// Home.dart

import 'package:ecommerce_part1/screens/home/page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_part1/common/widget/appbar.dart';
import 'package:ecommerce_part1/screens/home/widget/bottom_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Container(
      height: double.infinity,
      color: Colors.amber,
    ),
    Container(
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      color: Colors.red,
    ),
  ];
  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        firstIcon: Iconsax.notification_bing_outline,
        backButton: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: FBottomBar(
        currentIndex: _currentIndex,
        onTapMethod: _onTapMethod,
      ),
    );
  }
}
