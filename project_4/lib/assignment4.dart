import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Box Decoration"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 234, 188, 202),
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(200))
              ),
              margin: const EdgeInsets.all(10),
            ),),
        ),
      ),
    );
  }
}