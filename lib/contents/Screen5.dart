import 'package:flutter/material.dart';
import 'package:luminar_app_clone/contents/tabs/assignments.dart';
import 'package:luminar_app_clone/contents/tabs/batches.dart';
import 'package:luminar_app_clone/contents/tabs/courses.dart';
import 'package:luminar_app_clone/contents/tabs/info.dart';
import 'package:luminar_app_clone/contents/tabs/payments.dart';
import 'package:luminar_app_clone/contents/tabs/performance.dart';

import 'Screen3.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6, // Number of tabs
        child: ProfileScreen(),

      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          ProfileTab(),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('John Doe',style: TextStyle(color: Colors.black),),
          accountEmail: Text('john.doe@example.com',style: TextStyle(color: Colors.black),),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/icons/profilepic.webp"),
          ),
          decoration: BoxDecoration( // Customize the decoration
            color: Colors.white, // Set the background color to white
          ),

        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Make it scroll horizontally
          child: TabBar(
            isScrollable: true, // Enable scrolling for the TabBar
            labelColor: Colors.deepPurpleAccent, // Color for the selected tab
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'info'),
              Tab(text: 'Batches'),
              Tab(text: "Courses"),
              Tab(text: "Performance"),
              Tab(text: "Payments"),
              Tab(text: "Assignments"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              Expansionnn(),
              Batches(),
              courses(),
              performance(),
              payments(),
              assignments()


            ],
          ),
        ),
      ],
    );
  }
}