import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key,required this.topic});
  final Map topic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(topic['topicName']),
        backgroundColor:Colors.deepPurple.shade400,
      ),
      body: ListView.builder(
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
                    color: const Color.fromARGB(255, 122, 155, 124),
                    border: Border.all(width: 0.5,color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      topic['topicCodes'][index]
                    ),
                  ),
                ),
                //SizedBox(height: MediaQuery.sizeOf(context).height,)
              ],
            ),
          );
        }
      ),
    );
  }
}