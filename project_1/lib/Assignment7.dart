import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body:Row(
        children: [Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromARGB(100, 333, 222, 111),
        ),
                Container(
                  height: 150,
                  width: 150,
                  color: const Color.fromRGBO(100, 33, 5000, 55),
                )
        ],
      ),
    );
  }
}