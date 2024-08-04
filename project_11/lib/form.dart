import 'package:flutter/material.dart';

class FormScreen1 extends StatefulWidget {
  const FormScreen1({super.key});

  @override
  State<FormScreen1> createState() => _FormScreen1State();
}

class _FormScreen1State extends State<FormScreen1> {
  final _nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Privacy"),
            SizedBox(height: 10,),
            Text("Setting"),
            SizedBox(height: 10,),
            Text("Log Out"),
            SizedBox(height: 10,),
          ],
        ),
      ),
      appBar:AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body:Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: "Name",
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>(FormScreen2(text:_nameController.text,))));
          }, 
          child:const Text("Submit"))
        ],
      ),
    );
  }
}

class FormScreen2 extends StatelessWidget {
  final String text;
  const FormScreen2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text(text),
      )
    );
  }
}