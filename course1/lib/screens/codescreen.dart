import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CodeScreen extends StatefulWidget {
  final String? courseId;
  final String? topicId;
  final String? topicName;
  final String videoId;
  const CodeScreen({super.key,this.courseId, this.topicId, this.topicName, required this.videoId});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
    initialVideoId: widget.videoId,
    flags: YoutubePlayerFlags(
      startAt: 0,
      autoPlay: true,
      mute: true,
    ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showCode({required String code,required String title}){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(child: Text(title,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)),
        content:HighlightView(
          // The original code to be highlighted
          code,
          language: 'dart',
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: TextStyle(
            fontFamily: 'My awesome monospace font',
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.topicName}"),
          backgroundColor: Colors.purple.shade400,
        ),
        body: Column(
          children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: const ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("Courses")
                    .doc(widget.courseId)
                    .collection("Topics")
                    .doc(widget.topicId)
                    .collection("Codes")
                    .snapshots(),
                builder: (context , snapshot){
                  var codes = snapshot.data!.docs;
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }else{
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context,index){
                        var singleCode = codes[index];
                        return Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.amber
                          ),
                          child: Center(
                            child: ListTile(
                              title:Text("${singleCode['description']}"),
                              onTap:()=>showCode(title:singleCode['description'],code:singleCode['code']),
                            ),
                          ),
                        );
                      }
                    ),
                  );
                }
              }
            ),
          ],
        )
    );
  }
}
