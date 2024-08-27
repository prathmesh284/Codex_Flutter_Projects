import 'package:codex_ui1/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _username=TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:250,
            width: double.infinity,
            decoration: BoxDecoration(
              color:Colors.deepPurple,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(100))
            ),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome",style:TextStyle(color: Colors.white,fontSize: 42)),
                  SizedBox(height: 10),
                  Text("Please sign in to continue",style:TextStyle(color: Colors.white,fontSize: 20))
                ],  
              ),
            ) ,
          ),
          //SizedBox(height: 10,),
          Column(
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  controller: _username,
                  decoration: const InputDecoration(
                    hintText: "Mobile no. or email",
                  ),
                ),
              ),
              Container(
                width: 300,
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
              SizedBox(height:5),
              Text("Forgot password?")
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed:(){
                  if(_password.text=="Pratham"){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage(name: _username.text,)));
                  }else{
                    AlertDialog(
                      title: Text("Incorrect Password",style: TextStyle(color:Colors.black),),
                      content: Text("Incorrect Password",style: TextStyle(color:Colors.black),),
                    );
                  }
                }, 
                style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(const Color.fromARGB(255, 74, 68, 255))),
                child: Text("            Login            ",style: TextStyle(fontSize:20 ,color:Colors.white,backgroundColor: const Color.fromARGB(255, 74, 68, 255),fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account?"),
                Text("Sign up",style: TextStyle(color: Colors.red),)
              ],),
              SizedBox(height: 50,)
            ],
          ),
          //SizedBox(height: 1,)
        ],
      ),
    );
  }
}