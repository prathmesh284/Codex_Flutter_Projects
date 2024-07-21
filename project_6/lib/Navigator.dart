import 'package:flutter/material.dart';

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

class NavigatorScreen2 extends StatelessWidget {
  final String name;
  const NavigatorScreen2({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        height: 200,
        width: 200,
        child: Text(name),
      )
    );
  }
}