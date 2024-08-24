import 'package:flutter/material.dart';
import 'package:project_14_courses/Screen4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key,required this.course,required this.courseName});
  final Map course;
  final String courseName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
        centerTitle: true,
        backgroundColor:Colors.deepPurple.shade400,
      ),
      body: ListView.builder(
        itemCount: course.length,
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(top:4,left: 4,right: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(3)
            ),
            child: ListTile(
              title: Text(course['detail'][index]['topicName']),
              onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen4(topic: course['detail'][index],))),
            ),
          );
        }
      ),
    );
  }
}