import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [SliverAppBar(backgroundColor: Colors.deepPurpleAccent,
            // floating: false,
            // pinned: true,
            // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            // actions: [IconButton(onPressed: (){} ,icon:Icon( Icons.notifications) )],
            // title: Text("Luminar Technolab",
            //   style: TextStyle(color: Colors.white),),
            // //actions: [Icon(Icons.notifications),
            //
            // bottom: AppBar(backgroundColor: Colors.white,
            //   elevation: 0,
              title: Container(

                width:double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(decoration: InputDecoration(

                  hintText: "search by name",
                  prefixIcon: Icon(Icons.search),




                ),),),
            ),



            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: 2,(context,index)=>
                    Card(child:ListTile(
                      leading: Image.asset("assets/icons/bigdatabg.jpeg"),
                      title: Text("Bigdata Data Science"),
                      subtitle: Text("Rs.55000"),


                    ),)
                )
            ),
            SliverToBoxAdapter(
              child:BottomNavBar() ,
            )
          ]),
    );
  }
}
