// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({ Key? key }) : super(key: key);
  final List storyItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-1.jpeg",
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-2.jpeg",
    },
    {
      "pseudo": 'dramaLove',
      "photo": "assets/images/photo/photo-3.jpeg",
    },
    {
      "pseudo": 'moonTomato',
      "photo": "assets/images/photo/photo-4.jpeg",
    },
    {
      "pseudo": 'tvIt\'s',
      "photo": "assets/images/photo/photo-5.jpeg",
    },
    {
      "pseudo": 'moodPrety',
      "photo": "assets/images/photo/photo-7.jpeg",
    },
    {
      "pseudo": 'callofCallof',
      "photo": "assets/images/photo/photo-8.jpeg",
    },
    {
      "pseudo": 'flyLike',
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/photo-10.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: storyItems.map((story){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/story-circle.png', height: 112,),
                Image.asset('assets/images/story-circle.png', height: 110,),
                CircleAvatar(
                  
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage(story['photo'], ),
                ),

              ],
            ),
            SizedBox(height: 8,),
            Text(story['pseudo'],maxLines: 1, style: TextStyle(fontSize: 18),),

          ],)
        );
      }).toList()
      ),
    );
  }
}