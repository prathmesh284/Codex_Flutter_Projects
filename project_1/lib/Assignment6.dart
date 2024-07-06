import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body:Center(
        child:Container(
          height: 100,
          width: 100,
          color: const Color.fromARGB(100, 100, 100, 100),
          child: const Text("Demo"),
      ),
    ),
    );
  }
}