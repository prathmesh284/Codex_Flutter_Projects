import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text(
          "Instagram",style:GoogleFonts.lindenHill(textStyle:const TextStyle(
            color: Colors.pinkAccent,         // Change font color
            fontSize: 28.0,            // Change font size
            //fontWeight: FontWeight.bold,
          )),
          /*style: TextStyle(
              //fontFamily: "Playwrite BE VLG",
              color: Colors.pinkAccent,         // Change font color
              fontSize: 24.0,            // Change font size
              fontWeight: FontWeight.bold,  // Change font weight
              //fontStyle: FontStyle.italic,
          ),*/
          //style:GoogleFonts.lindenHill(textStyle:TextStyle(color:Colors.white)),
        ),
        actions: const [Icon(Icons.favorite_border_outlined,color: Colors.white,size: 20,),SizedBox(width: 10),Icon(Icons.message_outlined,color: Colors.white,size: 20,),SizedBox(width: 5)],
      ),
      body:SizedBox( //changed with container
        width: 500,
        child: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
              children: [
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    SizedBox(
                      width:80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration:BoxDecoration(
                              //color: Colors.white,
                              borderRadius:const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.grey.shade800, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'data:image/jpeg;base64,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',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                          const Text("Your Story",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.green, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                        const Text("pm.modi",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red, // Border color
                                width: 2.5,         // Border width
                                ),
                              ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                          const Text("baba_vanga",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.red, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                                        fit: BoxFit.fill,
                                        ),
                                    ),
                          ),
                          const Text("babubhai",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.red, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                          const Text("mr.shak's",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.red, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                         width: 60,
                                        height: 60,
                                        'data:image/jpeg;base64,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',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                          const Text("udya_shetty",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5,top: 10,bottom: 5),
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                                color: Colors.red, // Border color
                                width: 2.5,         // Border width
                                ), 
                            ),
                            child: ClipOval(     
                                      child: Image.network(
                                        width: 60,
                                        height:60,
                                        'data:image/jpeg;base64,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',
                                        fit: BoxFit.cover,
                                        ),
                                    ),
                          ),
                          const Text("payal",style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Column(
                children: [
                  Container(
                    decoration:const BoxDecoration(
                        color: Colors.black,
                        border: Border(
                          top: BorderSide(
                            color: Color.fromARGB(109, 158, 158, 158),
                            width: 1,
                          ), // Border width
                        ), 
                    ),
                    child:Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(
                          color: Colors.red, // Border color
                          width: 1,         // Border width
                          ), 
                        ),
                        child: ClipOval(     
                            child: Image.network(
                               width: 25,
                              height: 25,
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("mi_baburao_ganpatrao_apte",style: TextStyle(color: Colors.white),),
                        /*const SizedBox(
                          width: 140,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),*/
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      //height: 300,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                      color: Colors.black, // Border color
                      width: 0.5,         // Border width
                      ), 
                    ),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s",
                      fit: BoxFit.fitWidth,
                      ),
                    ),                       
                  ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("mi_baburao_ganpatrao_apte",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Jai Maharastra! Abe tu firse aa gaya,idhar zehar khane ka paisa nahi hai...",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'mi_baburao_ganpatrao_apte\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Jai Maharastra! Abe tu firse aa gaya,idhar zehar khane ka paisa nahi hai re baba...Tu ja re,tu ja!',style:TextStyle(color: Colors.grey,fontSize:14,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                ],
                ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(1),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158),
                              width: 1,
                           ),
                         ),
                       ),
                        child:Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: const BorderRadius.all(Radius.circular(1000)),
                              border: Border.all(
                              color: Colors.green, // Border color
                              width: 1,         // Border width
                              ), 
                              ),
                              child: ClipOval(     
                                child: Image.network(
                                  width: 25,
                                  height: 25,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("shri.narendra_damodardas_modi",style: TextStyle(color: Colors.white),),
                            /*const SizedBox(
                              width: 111,
                            ),
                            const Icon(Icons.menu_outlined,color:Colors.white,size: 20,),*/
                        ],),
                      ),   
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      //height: 300,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                      color: Colors.black, // Border color
                      width: 0.5,         // Border width
                      ), 
                      ),
                      child: Image.network("https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg",
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_outline,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("shri.narendra_damodardas_modi",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Pyare Deshwasiyo! Aaj suno mere maan ki baat.",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'shri.narendra_damodardas_modi\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Namskaar!Mere Pyare Deshwasiyo! Aaj suno mere maan ki baat.',style:TextStyle(color: Colors.grey,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                  ],
                ),
                Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158),
                              width: 1,
                           ),
                         ),
                       ),
                    child:Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(
                          color: Colors.red, // Border color
                          width: 1,         // Border width
                          ), 
                        ),
                        child: ClipOval(     
                            child: Image.network(
                               width: 25,
                              height: 25,
                              'https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("baba_vanga",style: TextStyle(color: Colors.white),),
                        /*const SizedBox(
                          width: 245,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),*/
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      //height: 300,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                      color: Colors.black, // Border color
                      width: 0.5,         // Border width
                      ), 
                    ),
                      child: Image.network("https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png",
                      fit: BoxFit.cover,
                      ),
                    ),                       ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("baba_vanga",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Comment! Ab tum hi bata do.",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'baba_vanga\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Comment? Bhai,Ab tu hi batade kya likhu.',style:TextStyle(color: Colors.grey,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                ],
                ),
                Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158),
                              width: 1,
                           ),
                         ),
                       ),
                    child:Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(
                          color: Colors.red, // Border color
                          width: 1,         // Border width
                          ), 
                        ),
                        child: ClipOval(     
                            child: Image.network(
                               width: 25,
                              height: 25,
                              'https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("mama_shakuni",style: TextStyle(color: Colors.white),),
                        /*const SizedBox(
                          width: 230,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),*/
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      //height: 300,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                      color: Colors.black, // Border color
                      width: 0.5,         // Border width
                      ), 
                    ),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzYI_hFMLF2NZhLeBAi-p7U26ZV8Md6pGJtOqxWaOvtGGfFGmeMeEucYA3LXZz5nZdSw&usqp=CAU",
                      fit: BoxFit.fitWidth,
                      ),
                    ),                       ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("mama_shakuni",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Mere Bachhe! Ranbhumi se pehle,maanbhumi mein khela jata hai.",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'mama_shakuni\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Mere Bachhe! Ranbhumi se pehle,maanbhumi mein khela jata hai.',style:TextStyle(color: Colors.grey,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                ],
                ),
                Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin:const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158),
                              width: 1,
                           ),
                         ),
                       ),
                    child:Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(
                          color: Colors.red, // Border color
                          width: 1,         // Border width
                          ), 
                        ),
                        child: ClipOval(     
                            child: Image.network(
                               width: 25,
                              height: 25,
                              'data:image/jpeg;base64,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',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("udya_shetty",style: TextStyle(color: Colors.white),),
                        /*const SizedBox(
                          width: 244,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),*/
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      //height: 300,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                      color: Colors.black, // Border color
                      width: 0.5,         // Border width
                      ), 
                    ),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Dm8ueYZheUPCGN_Rqwh5Srn3EKtIT-PqnA&s",
                      fit: BoxFit.fitWidth,
                      ),
                    ),                       ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("udya_shetty",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Control Control! Bhagwan ka diya sabkuch hai dukh hai,dard hai,berozgari hai,upar se tum!",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'udya_shetty\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Control Control!!.Bhagwan ka diya sabkuch hai dukh hai,dard hai,berozgari hai,upar se tum!',style:TextStyle(color: Colors.grey,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                ],
                ),
                Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158),
                              width: 1,
                           ),
                         ),
                       ),
                    child:Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: const BorderRadius.all(Radius.circular(1000)),
                          border: Border.all(
                          color: Colors.red, // Border color
                          width: 1,         // Border width
                          ), 
                        ),
                        child: ClipOval(     
                            child: Image.network(
                               width: 25,
                              height: 25,
                              'data:image/jpeg;base64,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',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("dr.ghunghroo",style: TextStyle(color: Colors.white),),
                        /*const SizedBox(
                          width: 234,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),*/
                    ],),
                  ),
                  Container(
                    //height: 300,
                    decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                    color: Colors.black, // Border color
                    width: 0.5,         // Border width
                    ), 
                  ),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMGHq2RSmptRXradnEbTldqGEjbSx4DtxRiQ&s",
                    fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    margin:const EdgeInsets.only(top: 5,left: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,color: Colors.white,size: 20,),
                        SizedBox(
                          width: 205,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("69 likes",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                        /*Row(
                          children: [
                            Text("dr.ghunghroo",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
                            SizedBox(width: 5,),
                            Text("Paisa!! Tera baap yaha chod kar gaya tha ki teri maa.",style: TextStyle(color: Colors.white,)),
                          ],
                        ),*/
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(),
                            children: [
                              TextSpan(text:'dr.ghunghroo\t',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              TextSpan(text:'Paisa!! Tera baap yaha chod kar gaya tha ki teri maa.',style:TextStyle(color: Colors.grey,)),
                            ]
                          ),
                        ),
                        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
                        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
                      ],
                    ),
                  ),
                ],
                ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}