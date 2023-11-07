import 'package:flutter/material.dart';

import 'Homescreen.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';

void main(){
  runApp(MaterialApp(
    home: BottomNavBar(),
    debugShowCheckedModeBanner: false,
  ));
}
class BottomNavBar  extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  var Screen=[
    HomeScreen(),
    Screen2(),
    Screen3(),
    Screen4(),
    ProfileApp()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar:BottomNavigationBar(
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          backgroundColor: Colors.white,
          currentIndex: index,
          selectedItemColor: Colors.blue,
          // type: BottomNavigationBarType.fixed
          type: BottomNavigationBarType.shifting ,//slideshow
          items: const[
            BottomNavigationBarItem(
                backgroundColor: Colors.white,//applicable for bottom navigation bar type shifting
                icon: Icon(Icons.home,color: Colors.black26,),
                label:"Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.people_alt_rounded,color: Colors.black26,),
                label:"Batches"),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.store,color: Colors.black26,),
                label:"Store"),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.chat,color: Colors.black26,),
                label:"Chats"),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.person_3_rounded,color: Colors.black26,),
                label:"Profile")
          ] ) ,
      body: Screen[index],
    );
  }
}