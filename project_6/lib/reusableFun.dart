import 'package:flutter/material.dart';

// ignore: camel_case_types
class reusableFun extends StatelessWidget{
  const reusableFun({super.key});
   
  Widget myContainer(){
    return Container(
      color: Colors.amber,
      width: 200,
      height: 200,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            myContainer(),
            myContainer(),
            myContainer(),
          ],
        ),
      )
    );
  }
}