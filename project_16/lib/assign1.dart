import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Screen1 extends StatefulWidget {
  const Screen1({super.key});
  @override
  State<Screen1> createState() => _Screen1State();
}
class _Screen1State extends State<Screen1> {
  final _username =TextEditingController();
  final _password=TextEditingController();
  Map data={};
  Future<void> sendData() async{
    debugPrint("Button Pressed");
    final url=Uri.parse("https://todo-node-api-3.onrender.com/todo/add");
    final header={'Content-Type':'application/json'};
    final body=jsonEncode(
      {
        "name":"${_username.text}",
        "password":"${_password.text}",
        "title":"Flutter Post Request",
        'userId':"64f8e59f2b7e970f3421d786"
      }
    );
    //Api Call
    final response =await http.post(url,headers: header,body: body);
    debugPrint(response.body);
    if(response.statusCode == 201){
      setState(() {});
      debugPrint("${response.statusCode}");
      data=json.decode(response.body);
      debugPrint("$data");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Assign2(data: data,)));
    }
    else{
      debugPrint("${response.statusCode}");
      debugPrint("$data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post request'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.black),
              borderRadius: BorderRadius.circular(8)
            ),
            child: TextField(
              controller: _username,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                hintText: "UserName"
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.sizeOf(context).width,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.black),
              borderRadius: BorderRadius.circular(8)
            ),
            child: TextField(
              controller: _password,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
          ),
          ElevatedButton(onPressed:sendData, child: Text("Submit")),
        ],
      )  
    );
  }
}


class Assign2 extends StatelessWidget {
  final Map? data;
  const Assign2({super.key,required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data!["message"]),centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Text("${data!['todo']['title']}",style: TextStyle(fontSize: 32),),
        ],
      ),
    );
  }
}