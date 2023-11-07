import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class assignments extends StatefulWidget {
  const assignments({super.key});

  @override
  State<assignments> createState() => _assignmentsState();
}

class _assignmentsState extends State<assignments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
        children:[Positioned(
          bottom: 200,left: 125,
          child:
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage("assets/icons/assignments.jpeg"),
          ),
        ),
          Positioned(bottom: 165,left: 30,
            child:
            Text(
              "You don't have any transactions to show! ",
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ]));
  }
}
