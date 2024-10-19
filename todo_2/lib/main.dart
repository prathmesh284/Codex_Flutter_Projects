import 'package:firebase_core/firebase_core.dart';
import 'package:todo_2/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:todo_2/categoryscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              //image: DecorationImage(image: AssetImage("images/image1.jpg"),fit:BoxFit.fill),
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CategoryList()));
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