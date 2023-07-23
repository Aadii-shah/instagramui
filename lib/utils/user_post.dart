import 'package:flutter/material.dart';

class userPost extends StatelessWidget {
  //const userPost({super.key});

  final String name;

  userPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),


          //PROFILE
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            Row(
            children: [Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle),
        
          ),

          SizedBox(width: 10,),

          //name
          Text(name, style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ],
          ),
          Icon(Icons.menu),
          ],
          ),
        ),

        //post
        Container(
          height: 400,
          color: Colors.grey[400],
        ),
        //below the post we have comments/like
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row( 
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark),
          ],),
        ),

        //liked by

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(children: 
          [
            Text('liked by '),
            Text(
              name ,
              style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(' and '),
        
          Text(
              'Others',
              style: TextStyle(fontWeight: FontWeight.bold),
          ),
        
          ]),
        ),

        //caption

        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text:
          TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
            TextSpan(
            text: name,
            style: TextStyle(fontWeight: FontWeight.bold)),
             TextSpan(text: ' This is the comment made by '+ name + ' Hello there!, how may i help you today'),
          ])),
        ),



        //comment

      
      ],
    );
  }
}

