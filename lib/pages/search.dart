import 'package:flutter/material.dart';
import 'package:instagramui/utils/explore_grid.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: 
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[500],
            padding: EdgeInsets.all(8),
            child: Row(
              children: 
              [ 
                Icon(Icons.search, color: Colors.grey[400],),
                Container(
                
                child: Text('Search', style: TextStyle(color: Colors.grey[400]),),
                )],
                ),
          ),
        ),
            ),
      body: exploreGrid(),
    );
  }
}