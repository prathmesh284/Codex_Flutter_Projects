import 'package:flutter/material.dart';

class Ass1Screen4 extends StatelessWidget {
  final String imageUrl;
  const Ass1Screen4({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Order"),
        centerTitle: true,
        ),
    body:Container(
      width:double.infinity,
      padding:EdgeInsets.only(left:15,right:15),
      color:Colors.white,
      child:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Container(
              height:40,
              margin:EdgeInsets.only(left:15,right:15),
              decoration:BoxDecoration(
                color:Colors.grey.shade200,
                borderRadius:BorderRadius.circular(10),
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                Container(
                      height:40,
                      width:120,
                      decoration:BoxDecoration(
                        color:Colors.orange,
                        borderRadius:BorderRadius.circular(10),
                        border: Border.all(color: Colors.orange,)
                      ),
                      child:Center(
                        child:Text('Deliver',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                      ),
                ),
                Row(
                  children:[
                    Text("Pick Up"),
                    SizedBox(width:35),
                  ]
                ),
                ],
              ),
            ),
            SizedBox(height:10),
            Column(
              children:[
                RichText(
                  text:TextSpan(
                    style: TextStyle(),
                    children: [
                      TextSpan(text:'Delivery Address\n',style:TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text:'Jl. Kpg Sutoyo\n',style:TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text:'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',style:TextStyle(color: Colors.grey.shade600)),
                  ]
                  ),
                ),
                SizedBox(height:10),
                Row(
                  children:[
                    SizedBox(width:3),
                    Container(
                      margin:EdgeInsets.only(left:10,right:10),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Row(
                        children:[
                          SizedBox(width:3),
                          Icon(Icons.edit),
                          SizedBox(width:4),
                          Text("Edit Address",style:TextStyle(color:Colors.grey)),
                          SizedBox(width:3),
                        ]
                      ),
                    ),
                    SizedBox(width:3),
                    SizedBox(height:5),
                    Container(
                      margin:EdgeInsets.only(left:10,right:10),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Row(
                        children:[
                          SizedBox(width:3),
                          Icon(Icons.edit),
                          SizedBox(width:4),
                          Text("Add Note",style:TextStyle(color:Colors.grey)),
                          SizedBox(width:3),
                        ]
                      ),
                    ),
                    SizedBox(width:3),
                  ],
                ),
                SizedBox(height:10),
                Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                Row(
                  children:[
                    Container(
                      width:50,
                      height:50,
                      decoration:BoxDecoration(
                        image:DecorationImage(image:AssetImage(imageUrl),fit:BoxFit.cover),
                        borderRadius:BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey,)
                      ),
                    ),
                    SizedBox(width:10),
                    Column(
                      children:[
                        Text("Cappuccino"),
                        SizedBox(height:3),
                        Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      width:17,
                      height:17,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Icon(Icons.remove,size:12),
                    ),
                    SizedBox(width:3),
                    Text("1",style:TextStyle(fontSize:18)),
                    SizedBox(width:3),
                    Container(
                      width:17,
                      height:17,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Icon(Icons.add,size:12),
                    ),
                  ],
                ),
                ],
                ),
              ]
            ),
            SizedBox(height:10),
            Container(
              margin:EdgeInsets.all(10),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                border: Border.all(color: Colors.grey,)
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      SizedBox(height:20,width:5),
                      Icon(Icons.check),
                      Text("1 Discount is applied"),
                    ],
                  ),
                  Text(">\t\t"),
                  //SizedBox(width:3),
                ],
              ),
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                SizedBox(height:20,width:5),
                Text("Payment Summary",style:TextStyle(fontWeight:FontWeight.bold)),
                SizedBox(height:20,width:5),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Price",style:TextStyle(fontWeight:FontWeight.bold)),
                    Text("\$4.53",style:TextStyle(fontWeight:FontWeight.bold)),
                  ],
                ),
                SizedBox(height:5),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Delivery Fee",style:TextStyle(fontWeight:FontWeight.bold)),
                    Text("\$2.0",style:TextStyle(fontWeight:FontWeight.bold)),
                  ],
                ),
                SizedBox(height:5),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Total Payment",style:TextStyle(fontWeight:FontWeight.bold)),
                    Text("\$5.53",style:TextStyle(fontWeight:FontWeight.bold)),
                  ],
                ),
                SizedBox(height:5),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:[
                        Icon(Icons.menu),
                        SizedBox(width:5),
                        Container(
                          padding:EdgeInsets.all(5),
                          margin:EdgeInsets.all(5),
                          decoration:BoxDecoration(
                            color:Colors.orange,
                            borderRadius:BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey,),
                          ),
                          child:Center(
                              child:Text("Cash"),
                            ),
                        ),
                        SizedBox(width:5),
                        Text("\$5.53",style:TextStyle(fontWeight:FontWeight.bold)),
                      ],
                    ),
                    Icon(Icons.menu)
                  ],
                ),
                Container(
                  width:double.infinity,
                  height:30,
                  margin:EdgeInsets.all(5),
                  decoration:BoxDecoration(
                    color:Colors.orange,
                    borderRadius:BorderRadius.circular(20),
                    border: Border.all(color: Colors.white,)
                  ),
                  child:Center(
                      child:Text("Order"),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    ),
    );
  }
}
