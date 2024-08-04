import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Privacy"),
            SizedBox(height: 10,),
            Text("Setting"),
            SizedBox(height: 10,),
            Text("Log Out"),
            SizedBox(height: 10,),
          ],
        ),
      ),
      appBar:AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
    );
  }
}