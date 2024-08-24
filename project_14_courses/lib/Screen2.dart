import 'package:flutter/material.dart';
import 'package:project_14_courses/Screen3.dart';
import 'package:project_14_courses/dummy_data.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key,required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello,$username!",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              width: double.infinity,
              //height: 700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                border: Border.all(width:1,color: Colors.black)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("AppDev",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height:225 ,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data[0]["courses"].length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen3(courseName: data[0]["courses"][index]["courseName"],course: data[0]["courses"][index],))), 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height:200,
                                width: 200,
                                margin: EdgeInsets.only(left:10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.5,color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(image: AssetImage(data[0]["courses"][index]["image"]))
                                ),
                                //child: Image.asset(data[0]["courses"][index]["image"],fit: BoxFit.cover,),
                              ),
                              SizedBox(height: 5,),
                              Text(data[0]["courses"][index]["courseName"])
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("WebDev",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 225,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data[1]["courses"].length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen3(courseName: data[1]["courses"][index]["courseName"],course: data[0]["courses"][index],))),
                          child: Column(
                            children: [
                              Container(
                                height:200,
                                width: 200,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.5,color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(image: AssetImage(data[1]["courses"][index]["image"]))
                                ),
                                //child: Image.asset(data[1]["courses"][index]["image"],fit: BoxFit.cover),
                              ),
                              SizedBox(height: 5,),
                              Text(data[1]["courses"][index]["courseName"])
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}