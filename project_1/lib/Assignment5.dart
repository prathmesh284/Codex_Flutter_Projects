import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body:Container(
        height: 100,
        width: 100,
        color: Color.fromARGB(100, 100, 100, 100),
        child: Text("Demo"),
      ),
    );
  }
}