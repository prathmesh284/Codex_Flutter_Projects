import 'package:flutter/material.dart';
import 'package:todo_1/task.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

List<Map<String,dynamic>> todo=[{'taskName':"",'taskDiscription':""}];

class _Screen1State extends State<Screen1> {
  final _taskNameController=TextEditingController();
  final _taskDiscription = TextEditingController();
  bool ontap=false;
  Widget todoList(){
    if(ontap){
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.white,width: 1),
        ),
      );
    }
    else{
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: todo.length,
        itemBuilder:(context,index){
          return InkWell(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>(Screen2(taskName:todo[index]['taskName'],taskDiscription:todo[index]['taskDiscription'],)))),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(bottom: 1),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black,width: 1),
              ),
              child: Text(todo[index]['taskName'],style: TextStyle(color: Colors.black),),
            ),
          );
        } 
      ),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo-List",style: TextStyle(fontSize: 30,color: Colors.red.shade200),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      //backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          todoList(),
          Column(
            children: [
              TextField(
                controller: _taskNameController,
                decoration: const InputDecoration(
                  hintText: "Task:",
                ),
              ),
              TextField(
                controller: _taskDiscription,
                decoration: const InputDecoration(
                  hintText: "Discription:",
                ),
              ),
              ElevatedButton(onPressed: (){
                todo.add({'taskName':_taskNameController.text,'taskDiscription':_taskDiscription.text});
                _taskNameController.clear();
                _taskDiscription.clear();
                setState(() {});
              }, 
              child:const Icon(Icons.add),)
            ],
          ),
        ],
      ),
    );
  }
}