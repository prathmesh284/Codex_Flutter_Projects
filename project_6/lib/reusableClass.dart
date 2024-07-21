import 'package:flutter/material.dart';


/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: reusableClass(imgUrl:"",),
    );
  }
}
*/


class reusableClass extends StatelessWidget{
  final String imgUrl;
  const reusableClass({super.key,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(imgUrl: "https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg")
          ],
        ),
      )
    );
  }
}


// Reusing code by using Class.
class MyContainer extends StatelessWidget{
  final String imgUrl;
  const MyContainer({super.key,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 200,
      width: 200,
      child: Image.network(imgUrl),
    );
  }
}