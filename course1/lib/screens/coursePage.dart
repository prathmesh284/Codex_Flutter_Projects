import 'package:course1/screens/courseInfo.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key,required this.course,required this.courseName});
  final Map course;
  final String courseName; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(courseName,style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.bold),),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(course["image"]),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100)
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: ListView.builder(
                itemCount: course.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(top:10,left: 8,right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(course['detail'][index]['topicName'],style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("View More",style: TextStyle(color: Colors.black,fontSize: 14),),
                            Icon(Icons.navigate_next,color: Colors.black,size: 14,)
                          ],
                        )
                      ],),
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>CourseInfo(topic: course['detail'][index],course: course,))),
                    ),
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}