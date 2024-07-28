import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool boxColor=true;
  int count =0;

  Widget myText(){
    if(count>=1){
      return const Center(child: Text("Porfolio"),);
    }else{
      return Container();
    }
  }

  Widget myContainer(){
    if(count>=2){
      return Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amber,
        ),
      );
    }else{
      return Container();
    }
  }

  Widget mySkill(){
    if(count>=3){
      return Column(
        children: [
          const Text("Skills"),
          const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.only(right: 10),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.only(right: 10),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.only(right: 10),
                ),
              ],
              ),
          ),
        ],
      );
    }else{
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFull Widgets"),
      ),
      body: Column(
        children: [
          myText(),
          myContainer(),
          mySkill()
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          count++;
          setState(() {});
        },
        backgroundColor:  boxColor?Colors.red:Colors.blue,
        child:const Icon(Icons.add),
      ),
    );
  }
}