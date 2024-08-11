import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String taskName;
  final String taskDiscription;
  const Screen2({super.key,required this.taskName,required this.taskDiscription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$taskName",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("$taskDiscription",style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}