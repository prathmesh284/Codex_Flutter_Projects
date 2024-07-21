import 'package:flutter/material.dart';

class InkwellScreen1 extends StatelessWidget {
  const InkwellScreen1({super.key});
  final String name="Pratham";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          ElevatedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InkwellScreen2(name:name)));
            }, 
            child: const Text("Click Me")),
          Text("Name is $name")
        ],)
    );
  }
}

class InkwellScreen2 extends StatelessWidget {
  final String name;
  const InkwellScreen2({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const InkwellScreen3()));
          },
          child: Container(
            color: Colors.amber,
            height: 200,
            width: 200,
            child: Text(name),
          ),
        ),
      )
    );
  }
}

class InkwellScreen3 extends StatelessWidget {
  const InkwellScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.red,
          height: 200,
          width: 200,
        ),
      )
    );
  }
}