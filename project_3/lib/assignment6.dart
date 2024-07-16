import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Container",style: TextStyle(),),
      ),
      body:Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.amber,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  ),
                  Container(
                  width: 100,
                  height:100,
                  color:Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}