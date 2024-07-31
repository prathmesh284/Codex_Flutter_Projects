import 'package:flutter/material.dart';
import 'package:project_10/ass1scr4.dart';

class Ass1Screen3 extends StatelessWidget {
  final String imageUrl;
  const Ass1Screen3({super.key,required this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Details"),
        centerTitle: true,
        actions: [Icon(Icons.favorite_border),SizedBox(width:10)],
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
              height:200,
              //margin:EdgeInsets.only(left:20),
              decoration:BoxDecoration(
                image:DecorationImage(image:AssetImage("$imageUrl"),fit:BoxFit.fitWidth),
                borderRadius:BorderRadius.circular(15),
              ),
            ),
            SizedBox(height:5),
            Text("Cappuccino",style:TextStyle(fontWeight:FontWeight.bold)),
            SizedBox(height:3),
            Text("with Chocolate",style:TextStyle(color:Colors.grey,fontSize:10)),
            Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              Row(
                children:[
                  Icon(Icons.star,color:Colors.orange),
                  Text("4.8",style:TextStyle(fontWeight:FontWeight.bold)),
                  Text("(230)"),
                ],
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Icon(Icons.star),
                  SizedBox(width:20),
                  Icon(Icons.star),
                ],
              ),
            ],
            ),
            SizedBox(height:15),
            Column(
              children:[
                RichText(
                  text:TextSpan(
                    style: TextStyle(),
                    children: [
                      TextSpan(text:'Description\n',style:TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text:'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',style:TextStyle(color: Colors.grey.shade600)),
                      TextSpan(text:'Read More\n',style:TextStyle(color:Colors.orange,fontWeight: FontWeight.bold)),
                  ]
                  ),
                ),
              ],
            ),
            SizedBox(height:1),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text("Size",style:TextStyle(fontWeight:FontWeight.bold)),
                SizedBox(height:5),
                Row(
                  children:[
                    Container(
                      height:40,
                      width:80,
                      margin:EdgeInsets.only(left:10),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Center(
                        child:Text('S',style:TextStyle(fontWeight:FontWeight.bold)),
                      ),
                    ),
                    Container(
                      height:40,
                      width:80,
                      margin:EdgeInsets.only(left:10),
                      decoration:BoxDecoration(
                        color:Colors.orange.shade100,
                        borderRadius:BorderRadius.circular(15),
                        border: Border.all(color: Colors.orange,)
                      ),
                      child:Center(
                        child:Text('M',style:TextStyle(fontWeight:FontWeight.bold)),
                      ),
                    ),
                    Container(
                      height:40,
                      width:80,
                      margin:EdgeInsets.only(left:10),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,)
                      ),
                      child:Center(
                        child:Text('L',style:TextStyle(fontWeight:FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height:15),
            Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  Column(
                    children:[
                      Text('Price',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.grey)),
                      Text('\$4.53',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.orange))
                    ],
                  ),
                  InkWell(
                    onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Ass1Screen4(imageUrl:imageUrl))),
                    child:Container(
                      height:40,
                      width:150,
                      margin:EdgeInsets.only(left:10),
                      decoration:BoxDecoration(
                        color:Colors.orange,
                        borderRadius:BorderRadius.circular(10),
                        border: Border.all(color: Colors.orange,)
                      ),
                      child:Center(
                        child:Text('Buy Now',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                      ),
                  ),
                  ),
                ],
              ),
          ],
        ),
      ),
    ),
    );
  }
}
