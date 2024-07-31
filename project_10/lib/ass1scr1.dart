import 'package:flutter/material.dart';
import 'package:project_10/ass1scr2.dart';

class Ass1Screen1 extends StatelessWidget {
  const Ass1Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("09:41",style:TextStyle(color: Colors.white,fontSize: 12)),
        backgroundColor:Colors.black,
        actions: [Icon(Icons.network_cell_outlined,color: Colors.white,size: 12,),SizedBox(width: 10),Icon(Icons.wifi,color: Colors.white,size: 12),SizedBox(width: 10),Icon(Icons.battery_4_bar_outlined,color: Colors.white,size: 12),SizedBox(width: 10),],
      ),
    body:Container(
      color:Colors.black,
      padding:EdgeInsets.all(10),
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
        children:[
          Positioned.fill(
            child:Image.asset("images/image1.jpg",fit: BoxFit.fitWidth),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.35),
            ),
          ),
          Positioned(
            top: 35,
            child: Container(
              padding:EdgeInsets.only(left:20,right:20),
              child:Column(
                children:[
                  Text("Coffee so Good,",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  Text("your taste buds will",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  Text("love it.",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(height:5),
                  Text("The best grain,the finest roast,",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,)),
                  Text("the powerfull flavor.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold,)),
                  SizedBox(height:5),
                ]
              ),
            ),
          ),
          InkWell(
            onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>const Ass1Screen2())),
            child:Container(
              height:30,
              width:MediaQuery.of(context).size.width,
              margin:EdgeInsets.all(20),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(8)),
                color:Colors.orange,
              ),
              child:Center(child:Text("Get Started",style:TextStyle(color:Colors.white)),),
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}
