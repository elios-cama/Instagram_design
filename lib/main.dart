// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/story_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Image.asset(
              'assets/images/instagram-logo.png',
              height: 80,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
              color: Colors.black,
              iconSize: 30,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send_outlined),
                color: Colors.black,
                iconSize: 30,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade900,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30,),
              label: 'Home',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30,),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined, size: 30,),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, size: 30,),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, size: 30,),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
