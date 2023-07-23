import 'package:flutter/material.dart';

class reels extends StatefulWidget {
  const reels({super.key});

  @override
  State<reels> createState() => _reelsState();
}

class _reelsState extends State<reels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('REELS')),
    );
  }
}