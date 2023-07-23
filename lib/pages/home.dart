import 'package:flutter/material.dart';
import 'package:instagramui/utils/bubble_stories.dart';
import 'package:instagramui/utils/user_post.dart';

class home extends StatefulWidget {
  //const home({super.key});

  //final List people = ['aaditya', 'coco', 'mitch', 'beast', 'xavier'];

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List people = ['aaditya', 'coco', 'mitch', 'beast', 'xavier','aaditya', 'coco', 'mitch', 'beast', 'xavier', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Instagram', style: TextStyle(color: Colors.black),),
          
          Row(children: [
          Icon(Icons.add),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(Icons.favorite),
          ),
          Icon(Icons.share),

          ],)
        ],),
      ),
      
      body: Column(children: [
        //STORIES
        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (context, index){
            return bubbleStories(text: people[index]);

          })
            

          
        ),


        //POST

        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index){
            return userPost(
              name: people[index]);
          }),
        ),
        
      ],
      )
    );
  }
}