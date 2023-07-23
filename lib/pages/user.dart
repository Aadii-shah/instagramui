import 'package:flutter/material.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: 
        [
        Row(
          children: 
        [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
          )

        ],)
      ],),
    );
  }
}