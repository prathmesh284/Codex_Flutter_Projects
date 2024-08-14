import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_1/task.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

List<Map> todo=[];

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
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.black,width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(todo[index]['taskName'],style: TextStyle(color: Colors.black),),
                ],
              ),
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
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("P r o f i l e",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10,top: 10),
                          padding: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            //image: DecorationImage(image: NetworkImage(info[0].imgUrl)),
                            color:Colors.white,
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(50),
                            //image: DecorationImage(image: image),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("pratham",style: TextStyle(color:Colors.white),),
                            const SizedBox(width: 1,),
                            Icon(Icons.edit,color: Colors.grey.shade600,size: 16,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined,color: Colors.white,),
                onTap: (){},
                title: const Text("Home",style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined,color: Colors.white,),
                onTap: (){},
                title: const Text("Setting",style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: const Icon(Icons.logout,color: Colors.white,),
                onTap: (){},
                title: const Text("Logout",style: TextStyle(color: Colors.white),),
              ),
            ],
        ),
      ),
      appBar: AppBar(
        title: Text("Todo-List",style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
      ),
      //backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          todoList(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 0.5,),
                  Container(
                    //height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: _taskNameController,
                          decoration: const InputDecoration(
                            hintText: "Task:",
                          ),
                        ),
                        SizedBox(height: 3,),
                        TextField(
                          controller: _taskDiscription,
                          decoration: const InputDecoration(
                            hintText: "Discription:",
                          ),
                        ),
                        SizedBox(height: 3,),
                      ],
                    ),
                  ), 
              ElevatedButton(onPressed: (){
                todo.add({'taskName':_taskNameController.text,'taskDiscription':_taskDiscription.text});
                _taskNameController.clear();
                _taskDiscription.clear();
                setState(() {});
                }, 
                child:const Icon(Icons.add),
                style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 15)),backgroundColor: WidgetStatePropertyAll(Colors.green.shade400),iconSize: WidgetStatePropertyAll(35)),
                ),
                SizedBox(width: 1,),
                ],
              ),  
              SizedBox(height: 3,),  
            ],
          ),
        ],
      ),
    );
  }
}