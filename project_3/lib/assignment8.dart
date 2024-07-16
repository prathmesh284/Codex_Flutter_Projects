import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("scrollable",style: TextStyle(),),
      ),
      body:Center(
        child: Container(
          height: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(top: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(top: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(top: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(top: 10),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}