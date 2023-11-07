import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class performance extends StatefulWidget {
  const performance({super.key});

  @override
  State<performance> createState() => _performanceState();
}

class _performanceState extends State<performance> {
  @override
  Widget build(BuildContext context) {
    return

 MaterialApp(
   debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(

          body: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurpleAccent), // Add a border
                        borderRadius: BorderRadius.circular(10), // Add rounded corners
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Batch tests',
                          style: TextStyle(color: Colors.black), // Change text color
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurpleAccent), // Add a border
                        borderRadius: BorderRadius.circular(10), // Add rounded corners
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Courses Tests',
                          style: TextStyle(color: Colors.black), // Change text color
                        ),
                      ),
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  color: Colors.deepPurpleAccent, // Set the color of the selected tab indicator
                  borderRadius: BorderRadius.circular(10), // Add rounded corners to the indicator
                ),
                labelColor: Colors.white, // Set the color of the selected tab label
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    NestedTabBar(),
                    Center(
                      child: NestedTabBar(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NestedTabBar extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
          children:[Positioned(
            bottom: 160,left: 125,
            child:
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("assets/icons/performance.jpeg"),
            ),
          ),
            Positioned(bottom: 110,left: 55,
              child:
              Text(
                'You have not attempted any test',
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(bottom: 80,left: 75,
              child:
              Text(
                'practice makes perfect.Attempt tests ',
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),

            Positioned(bottom: 50,left: 85,
              child:
              Text(
                'from your batches or courses',
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ]),

    );
  }
}