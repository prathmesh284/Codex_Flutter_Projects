import 'package:flutter/material.dart';
import 'package:project_14_courses/Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _username=TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height:250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/image1.jpg"),fit:BoxFit.fill),
              border: Border.all(width: 1,color: Colors.black),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight:  Radius.circular(30))
            ),
            //child: Image.asset("images/image1.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(height: 10,),
          Container(
            width: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: _username,
              decoration: const InputDecoration(
                hintText: "UserName",
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: _password,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
          ),
          ElevatedButton(
            onPressed:(){
              if(_password.text=="Pratham"){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2(username: _username.text,)));
              }else{
                AlertDialog(
                  title: Text("Incorrect Password",style: TextStyle(color:Colors.black),),
                  content: Text("Incorrect Password",style: TextStyle(color:Colors.black),),
                );
              }
            }, 
            style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.orange.shade500)),
            child: Text("Submit",style: TextStyle(color: Colors.black,backgroundColor: Colors.orange.shade500,fontWeight: FontWeight.bold),)
          )
        ],
      ),
    );
  }
}