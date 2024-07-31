import 'package:flutter/material.dart';
import 'package:project_10/ass1scr3.dart';

class Ass1Screen2 extends StatelessWidget {
  final String image1="images/image8.jpg";
  final String image2="images/image9.png";
  const Ass1Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      color:Colors.black,
      child:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child:Column(
        children:[
          Container(
            margin:EdgeInsets.only(left:20,top:20),
            color:Colors.black,
            child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text("Location",style:TextStyle(color: Colors.grey,fontSize: 12)),
                  SizedBox(height:4),
                  Row(
                    children:[
                      Text("Bilzen, Tanjungbalai\t",style:TextStyle(color: Colors.white,fontSize: 12)),
                      Icon(Icons.arrow_downward,color:Colors.white,size:12),
                    ],
                  ),
                ]
              ),
              Container(
                height:44,
                width:44,
                margin:EdgeInsets.only(right:20),
                decoration:BoxDecoration(
                  image:DecorationImage(image:AssetImage("images/image2.jpg")),
                  borderRadius:BorderRadius.circular(15),
                ),
              ),
            ]
          ),
          ),
          Container(
            height:200,
            margin:EdgeInsets.only(left:20,right:20),
            width:double.infinity,
            decoration:BoxDecoration(
              image:DecorationImage(image:AssetImage("images/image3.jpg"),fit:BoxFit.fitWidth),
              borderRadius:BorderRadius.all(Radius.circular(50)),
            ),
          ),
          const SizedBox(height: 2,),
          Container(
          color:Colors.white,
          child:Column(
            children:[
            SizedBox(height:20),
            SingleChildScrollView(
            scrollDirection:Axis.horizontal,
            child: Row(
              children: [
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color:Colors.orange,
                      borderRadius:BorderRadius.all(Radius.circular(20),),
                    ),
                    child: const Text("Cappuccino",style: TextStyle(color: Colors.white,fontSize: 10),),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:const BorderRadius.all(Radius.circular(10),),
                      border: Border.all(color: Colors.black,)
                    ),
                    child: const Text("Machiato",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:const BorderRadius.all(Radius.circular(10),),
                      border: Border.all(color: Colors.black,)
                    ),
                    child: const Text("Latte",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:const BorderRadius.all(Radius.circular(10),),
                      border: Border.all(color: Colors.black,)
                    ),
                    child: const Text("Americano",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ),
                  const SizedBox(width: 10,),
                ],
              ),
          ),
          Column(
            children:[
              SizedBox(height:10),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      InkWell(
                        onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Ass1Screen3(imageUrl:image1))),
                        child:Container(
                          height:100,
                          width:130,
                          margin:EdgeInsets.only(left:20),
                          decoration:BoxDecoration(
                            image:DecorationImage(image:AssetImage("$image1")),
                            //borderRadius:BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text("Cappuccino",style:TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height:3),
                      Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:[
                          Text("\t \$4.53",style:TextStyle(fontWeight:FontWeight.bold)),
                          SizedBox(width:30),
                          Container(
                            height:30,
                            width:30,
                            color:Colors.orange,
                            child:Center(
                              child:Icon(Icons.add,color:Colors.white,size:16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width:20),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      InkWell(
                        onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>Ass1Screen3(imageUrl:image2))),
                        child:Container(
                          height:100,
                          width:130,
                          margin:EdgeInsets.only(left:20),
                          decoration:BoxDecoration(
                            image:DecorationImage(image:AssetImage("$image2")),
                            //borderRadius:BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text("Cappuccino",style:TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height:3),
                      Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:[
                          Text("\t \$4.53",style:TextStyle(fontWeight:FontWeight.bold)),
                          SizedBox(width:30),
                          Container(
                            height:30,
                            width:30,
                            color:Colors.orange,
                            child:Center(
                              child:Icon(Icons.add,color:Colors.white,size:16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ),
              SizedBox(height:5),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height:100,
                        width:130,
                        margin:EdgeInsets.only(left:20),
                        decoration:BoxDecoration(
                          image:DecorationImage(image:AssetImage("images/image6.jpg")),
                          //borderRadius:BorderRadius.circular(30),
                        ),
                      ),
                      Text("Cappuccino",style:TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height:3),
                      Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:[
                          Text("\t \$4.53",style:TextStyle(fontWeight:FontWeight.bold)),
                          SizedBox(width:30),
                          Container(
                            height:30,
                            width:30,
                            color:Colors.orange,
                            child:Center(
                              child:Icon(Icons.add,color:Colors.white,size:16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width:20),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height:100,
                        width:130,
                        margin:EdgeInsets.only(left:20),
                        decoration:BoxDecoration(
                          image:DecorationImage(image:AssetImage("images/image7.jpg")),
                          //borderRadius:BorderRadius.circular(30),
                        ),
                      ),
                      Text("Cappuccino",style:TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height:3),
                      Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:[
                          Text("\t \$4.53",style:TextStyle(fontWeight:FontWeight.bold)),
                          SizedBox(width:30),
                          Container(
                            height:30,
                            width:30,
                            color:Colors.orange,
                            child:Center(
                              child:Icon(Icons.add,color:Colors.white,size:16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]
              ),
              ),
            ],
          ),
            ],
          ),
          ),
        ],
      ),
      ),
    ),
    );
  }
}
