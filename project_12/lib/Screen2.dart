import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  final String imgUrl;
  const Screen2({super.key, required this.name,required this.email,required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
           Row(
             children: [
               Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(left:25,right: 10,top: 10,bottom: 10),
                padding: const EdgeInsets.all(5),
                decoration:BoxDecoration(
                  image:DecorationImage(image:NetworkImage(imgUrl),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 2,
                  )
                ),
              ),
              const SizedBox(width: 15,),
                Column(
                  children: [
                    Text(name,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Text(email,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                )
             ],
           ),
        ],
      )
    );
  }
}