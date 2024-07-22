import 'package:flutter/material.dart';


class NavigatorScreen2 extends StatelessWidget {
  final String name;
  const NavigatorScreen2({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        height: 200,
        width: 200,
        child: Text(name),
      )
    );
  }
}