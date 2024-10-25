import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course1/screens/codescreen.dart';
import 'package:flutter/material.dart';

class Topicsscreen extends StatefulWidget {
  final String? courseId;
  final String? courseName;
  const Topicsscreen({super.key, this.courseId, this.courseName});

  @override
  State<Topicsscreen> createState() => _TopicsscreenState();
}

class _TopicsscreenState extends State<Topicsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.courseName}"),
          backgroundColor: Colors.purple.shade400,
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Courses")
                .doc(widget.courseId)
                .collection("Topics")
                .snapshots(),
            builder: (context , snapshot){
              var topics = snapshot.data!.docs;
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }else{
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index){
                  var singleTopic = topics[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CodeScreen(videoId: singleTopic['videoLink'],courseId: widget.courseId,topicId: singleTopic.id,topicName: singleTopic['title'],))),
                      child: Container(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width,
                        color: const Color.fromARGB(255, 239, 200, 200),
                        child: Center(child: Text(singleTopic['description'])),
                      ),
                    ),
                  );
              }
            );
          }
        }
      )
    );
  }
}
