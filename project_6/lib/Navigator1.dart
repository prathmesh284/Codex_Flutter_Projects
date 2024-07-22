import 'package:flutter/material.dart';
import 'package:project_6/Navigator2.dart';

class NavigatorScreen1 extends StatelessWidget {
  const NavigatorScreen1({super.key});
  final String name="Pratham";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          ElevatedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigatorScreen2(name:name)));
            }, 
            child: const Text("Click Me")),
          Text("Name is $name")
        ],)
    );
  }
}