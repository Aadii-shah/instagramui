import 'package:flutter/material.dart';
import 'package:instagramui/pages/home.dart';
import 'package:instagramui/pages/reels.dart';
import 'package:instagramui/pages/search.dart';
import 'package:instagramui/pages/shop.dart';
import 'package:instagramui/pages/user.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

// navigate around navigation bar
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate
  final List<Widget> _children = [
    home(),
    reels(),
    search(),
    shop(),
    user()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ]
        ),
    );
  }
}