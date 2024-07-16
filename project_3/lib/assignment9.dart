import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",style: TextStyle(color: Colors.pinkAccent,         // Change font color
              fontSize: 24.0,               // Change font size
              fontWeight: FontWeight.bold,  // Change font weight
              fontStyle: FontStyle.italic,
          ),
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
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        //color: Colors.white,
                        borderRadius:BorderRadius.all(Radius.circular(1000)),
                        /*border: Border.all(
                          color: Colors.black, // Border color
                          width: 3.0,         // Border width
                          ),*/ 
                      ),
                      child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.green, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.red, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.red, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                                  fit: BoxFit.fill,
                                  ),
                              ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.red, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.red, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      /*child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),*/
                    ),Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(1000)),
                        border: Border.all(
                          color: Colors.red, // Border color
                          width: 2.0,         // Border width
                          ), 
                      ),
                      /*child: ClipOval(     
                                child: Image.network(
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),*/
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
                    decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                          color: Colors.black, // Border color
                          width: 1,         // Border width
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
                               width: 20,
                              height: 20,
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("mi_baburao_ganpatrao_apte",style: TextStyle(color: Colors.white),),
                        const SizedBox(
                          width: 140,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 300,
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
                    ),                       ),
                  Container(
                    color: Colors.black,
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
                          width: 272,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                ],
                ),
                      Container(
                        decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                              color: Colors.black, // Border color
                              width: 1,         // Border width
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
                                   width: 20,
                                  height: 20,
                                  'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                                  fit: BoxFit.cover,
                                  ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("shri.narendra_damodardas_modi",style: TextStyle(color: Colors.white),),
                            const SizedBox(
                              width: 111,
                            ),
                            const Icon(Icons.menu_outlined,color:Colors.white,size: 20,),
                        ],),
                      ),   
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 300,
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
                          width: 272,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                  ],
                ),
                Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                          color: Colors.black, // Border color
                          width: 1,         // Border width
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
                               width: 20,
                              height: 20,
                              'https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("baba_vanga",style: TextStyle(color: Colors.white),),
                        const SizedBox(
                          width: 245,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 300,
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
                          width: 270,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
                  ),
                ],
                ),
                Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                          color: Colors.black, // Border color
                          width: 1,         // Border width
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
                               width: 20,
                              height: 20,
                              'https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg',
                              fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("mama_sakuni",style: TextStyle(color: Colors.white),),
                        const SizedBox(
                          width: 230,
                        ),
                        const Icon(Icons.menu_outlined,color: Colors.white,size: 20,),
                    ],),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      height: 300,
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
                          width: 270,
                        ),
                        Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
                    ],),
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