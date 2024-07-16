import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Box Decoration Image"),
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
                borderRadius: BorderRadius.all(Radius.circular(200)),
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),fit: BoxFit.cover),
              ),
              margin: const EdgeInsets.all(10),
            ),),
        ),
      ),
    );
  }
}