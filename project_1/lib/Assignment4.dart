import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body:Container(
        height: 100,
        width: 100,
        color: const Color.fromARGB(100, 100, 100, 100),
      ),
    );
  }
}