import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Column"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height:100,
            width:100,
            color: Colors.blue,
          ),
          const Text("Box 1"),
          Container(
            height:100,
            width:100,
            color: Colors.red,
          ),
          const Text("Box 2"),
          Container(
            height:100,
            width:100,
            color: Colors.green,
          ),
          const Text("Box 3"),
        ],),
      ),
    );
  }
}