import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({super.key,required this.topic,required this.course});
  final Map topic;
  final Map course;
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
              Text(course["courseName"],style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.bold),),
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
        shrinkWrap: true,
        itemCount: topic['topicDescription'].length,
        itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topic['topicDescription'][index],style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 2,),
                Container(
                  padding: EdgeInsets.all(3),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HighlightView(
                      topic['topicCodes'][index],
                      language: 'dart',
                      theme: githubTheme,
                      padding: EdgeInsets.all(12),
                      textStyle: TextStyle(
                        fontFamily: 'My awesome monospace font',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: MediaQuery.sizeOf(context).height,)
              ],
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