import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Instagram",style: TextStyle(),),
      ),
      body:Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 100,
                height:100,
                color:Colors.red,
                margin: const EdgeInsets.only(left: 10),
                ),
                Container(
                width: 100,
                height:100,
                color:Colors.red,
                margin: const EdgeInsets.only(left: 10),
                ),
                Container(
                width: 100,
                height:100,
                color:Colors.red,
                margin: const EdgeInsets.only(left: 10),
                ),
                Container(
                width: 100,
                height:100,
                color:Colors.red,
                margin: const EdgeInsets.only(left: 10),
                )
            ],
          ),
        ),
      ),
    );
  }
}