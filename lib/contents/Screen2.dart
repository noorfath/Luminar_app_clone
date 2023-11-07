import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body: CustomScrollView(
          slivers: [SliverAppBar(backgroundColor: Colors.deepPurpleAccent,
            // floating: false,
            //pinned: true,
            //leading: IconButton(onPressed: (){},
            //   Navigator.of(context).push
            // (MaterialPageRoute(builder: (context) => Drawerrr())),
            //icon: Icon(Icons.menu)),
            //actions: [IconButton(onPressed: (){} ,icon:Icon( Icons
            //     .notifications) )],
            // title: Text("Luminar Technolab",
            //   style: TextStyle(color: Colors.white),),
            //actions: [Icon(Icons.notifications),

            // bottom: AppBar(backgroundColor: Colors.white,
            //  elevation: 0,
            title: Container(
              width:double.infinity,
              height: 40,
              color: Colors.white,
              child: TextField(decoration: InputDecoration(
                hintText: "search by name",
                prefixIcon: Icon(Icons.search),


              ),),),
          ),

            // ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 1,(context,index)=>
              // Card(
              //     child: ListTile( leading: Text("1 BATCH"),
              //         trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_drop_down),
              //         ),
              //     )),)),

              Container(
                decoration: BoxDecoration(
                ),
                height: 200,
                child: Container(
                  child:Stack(
                    children: [
                      Container(child: GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen3()));
                      },),
                        height: 600,
                        width: 400,
                        decoration: BoxDecoration(
                            image: const DecorationImage(

                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/whitebg.jpg",),
                            )),
                      ),
                      const Positioned(
                          top:20,
                          left: 30,
                          child: Text("FLUTTER May 23 Sreedevi 2pm",
                            style: TextStyle(fontSize: 20,color: Colors.black),)),
                      const Positioned(
                          top:65,
                          left: 30,
                          child: Text("ANDROID WEB DEVELOPMENT . ANDROID WEB",
                            style: TextStyle(fontSize: 16,color: Colors.black26),)),
                      const Positioned(
                          top:85,
                          left: 30,
                          child: Text("DEVELOPMENT ",
                            style: TextStyle(fontSize: 16,color: Colors.black26),)),
                      const Positioned(
                        bottom:35,
                        left: 30,
                        child: Icon(Icons.person_outline_rounded,color: Colors.black,size: 30,),
                        //  Text("DEVELOPMENT ",
                        //  style: TextStyle(fontSize: 16,color: Colors.black26),)
                      ),
                      const Positioned(
                          bottom:35,
                          left: 70,
                          child: Text("Luminar Technolab",
                            style: TextStyle(fontSize: 18,color: Colors.black26),)),

                    ],
                  ),

                ),
              )
              ),
            ),
          ]
      ),
    );
  }
}