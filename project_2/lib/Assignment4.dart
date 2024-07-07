import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Row"),
        leading: const Icon(Icons.email),
        actions: const [Icon(Icons.monitor)],
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Container(
            height:100,
            width:100,
            color: Colors.blue,
          ),
          Container(
            height:100,
            width:100,
            color: Colors.red,
          )
        ],),
      ),
    );
  }
}