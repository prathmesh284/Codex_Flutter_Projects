import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Box Decoration Image scorll"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 234, 188, 202),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    margin:const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),fit: BoxFit.cover),
                    ),
                  ),
                   Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),fit: BoxFit.cover),
                    ),
                    margin: const EdgeInsets.all(10),
                  ),
                ],
              ),
            ),),
        ),
      ),
    );
  }
}