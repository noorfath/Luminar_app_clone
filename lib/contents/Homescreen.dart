import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
    // appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
    //   leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
    //   title: Text("Luminar Technolab",style: TextStyle(color: Colors.white),),
    //   actions: [Icon(Icons.notifications),
    //
    //   ],
    // ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
                padding:  EdgeInsets.only(bottom: 25.0,left: 250.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Image.asset('assets/icons/chatting.jpeg', scale: 1.5),
            SizedBox(height: 20,),],)
          ),
          Positioned(
            right: 50,
            bottom: 30,
            child: Container(
              height: 20,
              width: 50,

            ),
          ),
          //const Positioned(child:Container(child Image(image: AssetImage("assets/images/img.png"))),
          const Positioned(
              top:20,
              left: 30,
              child: Text("Share Your Experience",
                style: TextStyle(fontSize: 15,color: Colors.black),)),
          const Positioned(
              top:38,
              left: 30,
              child: Text("Give your tutor a smile by ",
                style: TextStyle(fontSize: 15,color: Colors.black26),)),
          const Positioned(
              top:55,
              left: 30,
              child: Text(" sharing your experience",
                style: TextStyle(fontSize: 17,color: Colors.black26),)),
          Positioned(
            left: 55,
            bottom: 40,
            child: Card(

              child:ElevatedButton(onPressed: (){}, child:  Text('write now',
                style: TextStyle(fontSize: 15,color: Colors.black),),
              ),
            ),
          ),
        ],
      ),

    );
  }
}