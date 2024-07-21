import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget{
  const ListViewDemo({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder:(context,index){
          return Container(
            height: 200,
            width: 200,
            color: Colors.amber,
            margin: const EdgeInsets.all(20),
          );
        },
      )
    );
  }
}