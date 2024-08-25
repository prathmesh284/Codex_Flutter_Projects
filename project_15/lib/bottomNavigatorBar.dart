import 'package:flutter/material.dart';

class Navigator1 extends StatefulWidget {
  const Navigator1({super.key});

  @override
  State<Navigator1> createState() => _Navigator1State();
}

class _Navigator1State extends State<Navigator1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navigator Bar"
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.search),
            Icon(Icons.favorite_outline),
            Icon(Icons.hub)
          ],
        ),
      ),
    );
  }
}