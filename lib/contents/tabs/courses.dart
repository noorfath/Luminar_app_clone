import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screen3.dart';

void main (){
  runApp(MaterialApp(home: courses(),));
}


class courses extends StatefulWidget {
  const courses({super.key});

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[Positioned(
          bottom: 250,left: 125,
          child:
          CircleAvatar(
radius: 80.0,
backgroundImage: AssetImage("assets/icons/courses.jpeg"),
          ),
        ),
      Positioned(bottom: 205,left: 105,
        child:
        Text(
          'No Courses Purchased',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
          Positioned(bottom: 180,left: 140,
            child:
            Text(
              "it's a bit lonely here,",

              style: GoogleFonts.openSans(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(bottom: 160,left: 108,
            child:
            Text(
            "buy courses and start learning!",

              style: GoogleFonts.openSans(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(bottom: 110,left: 160,
            child:
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen3()));

                  }, child: Text("Go To Store"),)
          ),


]
      ),
    );
  }
}
