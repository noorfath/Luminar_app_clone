import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen3.dart';



class Batches  extends StatefulWidget {
  const Batches({Key? key}) : super(key: key);

  @override
  State<Batches> createState() => _BatchesState();
}

class _BatchesState extends State<Batches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body:
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

    );
  }
}