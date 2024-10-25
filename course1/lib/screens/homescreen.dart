import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course1/screens/topicsscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Welcome Pratham!",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple.shade400,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:225,
            width: double.infinity,
            decoration: BoxDecoration(
              color:Colors.deepPurple,
              border: Border.all(width: 1),
              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(100))
            ),
            child:Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/image3.jpg"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 0.5),
                    ),
                  ),
                  SizedBox(width: 1,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi, Pratham!",style:TextStyle(color: Colors.white,fontSize: 42)),
                      SizedBox(height: 10),
                      Text("Hope you are fine",style:TextStyle(color: Colors.white,fontSize: 20))
                    ],  
                  ),
                ],
              ),
            ) ,
          ),
          SizedBox(height: 10,),
          
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Courses").snapshots(),
                  builder: (context, snapshot) {
                    var course = snapshot.data!.docs;
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }else{
                    return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){
                      var singleCourse = course[index];
                      return InkWell(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Topicsscreen(courseId: singleCourse.id,courseName: singleCourse["title"],))),
                        child: Container(
                          height: 200,
                          width: 200,
                          margin:EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: List.empty(),
                            border: Border.all(color: Colors.black12,style: BorderStyle.solid),
                          ),
                          child: Center(
                            child: Text(
                              "${singleCourse["title"]}"
                            ),
                          ),
                        ),
                      );
                    });
                    }
                  }
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label:"Home",backgroundColor: Colors.grey.shade100,activeIcon: Container(width: 80,height: 40,decoration: BoxDecoration(color: Colors.grey.shade400,borderRadius: BorderRadius.circular(10)),child: Icon(Icons.home_outlined,color: Colors.black,),),),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.black,),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black,),label: "Like"),
          BottomNavigationBarItem(icon: GestureDetector(child: Container(
                    height: 25,
                    width: 25,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/image3.jpg"),fit: BoxFit.cover),borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1,color: Colors.black),
                    ),
          ),),label: "Profile"),
        ]
      ),
    );
  }
}
