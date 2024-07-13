import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Instagram",style: TextStyle(),),
      ),
      body:SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 300,
              child: Row(
                children:[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(1000)),
                    ),
                  ),
                  const Text("Stories"),
                  ],
              ),
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
            ),
            Container(
              width: 300,
              color: Colors.blue,
              child: const Row(
                children: [
                  Icon(Icons.heart_broken),
                  Icon(Icons.comment),
                  Icon(Icons.send)
              ],),
            )
          ],
        ),
      ),
    );
  }
}