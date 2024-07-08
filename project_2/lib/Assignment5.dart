import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 34, 163),
        centerTitle: true,
        title: const Text("Row Assignment 5",style:TextStyle(color: Colors.white ),),
      ),
      body:SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 222, 178, 193),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Container(
                  height: 400,
                  width: 700,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height:100,
                        width:100,
                        color: const Color.fromARGB(255, 220, 218, 212),
                      ),
                      Container(
                        height:100,
                        width:100,
                        color: const Color.fromARGB(255, 220, 218, 212),
                      ),
                      Container(
                        height:100,
                        width:100,
                        color: const Color.fromARGB(255, 220, 218, 212),
                      ),
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}