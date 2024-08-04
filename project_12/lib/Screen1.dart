import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_12/Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _nameController=TextEditingController();
  final _emailController=TextEditingController();
  final String imgUrl="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6";
  bool submit=false;
  Widget check(){
    if(submit==true){
      return drawerId();
    }
    else{
      return Container();
    }
  }
  Widget drawerId(){
    return Row(
              children: [
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(Screen2(name: _nameController.text, email: _emailController.text, imgUrl: imgUrl))));},
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(left:15,right: 10,top: 10,bottom: 10),
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
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Text(_nameController.text),
                    const SizedBox(height: 5,),
                    Text(_emailController.text),
                  ],
                )
              ],
    );
  }

  Widget drawerContainer({required String function}){
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.black,
          width: 1,
        )
      ),
      child: Text(function)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        backgroundColor: Colors.grey.shade600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            drawerId(),
            const SizedBox(height: 5,),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black,
            ),
            const SizedBox(height: 1,),
            drawerContainer(function: "Setting"),
            const SizedBox(height: 1,),
            drawerContainer(function: "Privacy"),
            const SizedBox(height: 1,),
            drawerContainer(function: "Logout"),
            const SizedBox(height: 1,),
          ],
        ),
      ),
      appBar:AppBar(
        title: const Text("Screen 1"),
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
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              hintText: "Email Id",
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            submit=true;
            setState(() {check();});
          }, 
          child:const Text("Submit"))
        ],
      ),
    );
  }
}
