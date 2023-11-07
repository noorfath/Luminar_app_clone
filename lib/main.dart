import 'package:flutter/material.dart';
import 'package:luminar_app_clone/contents/drawer.dart';

    void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue),
    visualDensity: VisualDensity.adaptivePlatformDensity),

      home: Drawerr(),
    );
  }
}
