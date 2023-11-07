import 'package:flutter/material.dart';


import 'bottomnavbar.dart';

void main() {
  runApp(Drawerr());
}

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
        title: Text("Luminar technolab",style: TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(backgroundColor: Colors.white,

        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/img_2.png"),
                  )
              ),

              accountName: Text("John Doe",style: TextStyle(color: Colors.black),),
              accountEmail: Text("john.doe@example.com",style: TextStyle(color: Colors.grey)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/profilepic.webp"),
                backgroundColor: Colors.grey,

              ),

            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text("Courses Certificates"),
              onTap: () {
                // Handle the Home menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text("Offline downloads"),
              onTap: () {
                // Handle the Home menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.folder_copy_outlined),
              title: Text("Free Material"),
              onTap: () {
                // Handle the Home menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text("Student Testmonial"),
              onTap: () {
                // Handle the Home menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Edit Profile"),
              onTap: () {
                // Handle the Home menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("How to use the apps"),
              onTap: () {
                // Handle the Settings menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text("Privacy Policy"),
              onTap: () {
                // Handle the Settings menu item click
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.payment_rounded),
              title: Text("payments"),
              onTap: () {
                // Handle the Settings menu item click
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Share on Facebook"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors
                    .deepPurpleAccent),
                // Change the button's background color here
              ),
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
      body: BottomNavBar() ,

    );
  }
}