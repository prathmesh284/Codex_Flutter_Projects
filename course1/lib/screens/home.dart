import 'package:course1/screens/CoursePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,required this.name});
  final String name; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:250,
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
                      Text("Hi, $name",style:TextStyle(color: Colors.white,fontSize: 42)),
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
              child: ListView.builder(
                //shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context,i){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("${data[i]["courseType"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height:225 ,
                  child: ListView.builder(
                  shrinkWrap: true,
                  controller:ScrollController(keepScrollOffset: true),
                  scrollDirection: Axis.horizontal,
                  itemCount: data[i]["courses"].length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CoursePage(courseName: data[i]["courses"][index]["courseName"],course: data[0]["courses"][index],))), 
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
                              image: DecorationImage(image: AssetImage(data[i]["courses"][index]["image"]))
                            ),
                            //child: Image.asset(data[0]["courses"][index]["image"],fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 5,),
                          Text(data[i]["courses"][index]["courseName"])
                        ],
                      ),
                    );
                  }
                ),
              ),
              ],
              );
              }
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